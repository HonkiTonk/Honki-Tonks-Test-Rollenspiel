pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body Falsch is

   procedure Falsch
   is begin

      Put_Line (Item => "Falsche Eingabe, bitte erneut versuchen.");
      New_Line;

   end Falsch;

end Falsch;
