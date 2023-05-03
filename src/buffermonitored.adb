with Ada.Text_IO;

package body BufferMonitored is
    procedure append (i : Integer) is
        use Ada.Text_IO;
    begin
        Put_Line ("Appended {0}");
    end append;

    procedure take (i : Integer) is
        use Ada.Text_IO;
    begin
        Put_Line ("Taken {0}");
    end take;

end BufferMonitored;
