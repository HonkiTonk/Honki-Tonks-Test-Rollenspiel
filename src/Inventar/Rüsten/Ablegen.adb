with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with Ausgeruestet;
with EinWort;
  
package body Ablegen is

   procedure Ablegen
   is begin
      
      Ausgeruestet.Ausgerüstet;
      Put_Line ("Was möchten sie ablegen?");
      GegenstandName := EinWort.EinWort;
      
   end Ablegen;

end Ablegen;
