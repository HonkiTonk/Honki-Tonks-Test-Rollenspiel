pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Ausgeruestet;
with EinWort;
  
package body Ablegen is

   procedure Ablegen
   is begin
      
      Ausgeruestet.Ausgerüstet;
      Put_Line (Item => "Was möchten sie ablegen?");
      GegenstandName := EinWort.EinWort;
      
   end Ablegen;

end Ablegen;
