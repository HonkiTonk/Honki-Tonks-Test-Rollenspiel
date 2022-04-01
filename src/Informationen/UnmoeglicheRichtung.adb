pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body UnmoeglicheRichtung is

   procedure UnmöglicheRichtung
   is begin
      
      Put_Line (Item => "In diese Richtung können sie sich nicht bewegen.");
      
   end UnmöglicheRichtung;

end UnmoeglicheRichtung;
