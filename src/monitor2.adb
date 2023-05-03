with Ada.Text_IO;
with BufferMonitored;

procedure Monitor2 is
   use Ada.Text_IO;
begin
   Put_Line ("Hello Ada");
   BufferMonitored.append(12);
   BufferMonitored.take(12);
end Monitor2;
