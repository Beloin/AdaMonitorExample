with Ada.Text_IO;

package body BufferMonitored is

    protected type Lock is
        entry Lock;

        procedure Unlock;

    private
        Locked : Boolean := False;
    end Lock;

    protected body Lock is
        entry Lock when not Locked is
            use Ada.Text_IO;
        begin
            Put_Line ("Locked.");
            Locked := True;
        end Lock;

        procedure Unlock is
            use Ada.Text_IO;
        begin
            Put_Line ("Unlocked.");
            Locked := False;
        end Unlock;
    end Lock;

    locker : Lock;

    procedure append (i : Integer) is
        use Ada.Text_IO;
    begin
        locker.Lock;
        Put_Line ("Appended {0}");
        locker.Unlock;
    end append;

    procedure take (i : Integer) is
        use Ada.Text_IO;
    begin
        Put_Line ("Taken {0}");
    end take;

end BufferMonitored;
