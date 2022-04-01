pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package AusruestenWaffen is

   procedure AusrüstenWaffen
     (IDPositionExtern : in Integer);

private

   AusrüstenLäuft : Boolean := True;

   FreierPlatz : Integer := 0;
   ZwischenspeicherID1 : Integer;
   ZwischenspeicherID2 : Integer;

   Auswahl : Unbounded_Wide_Wide_String;

end AusruestenWaffen;
