pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Charaktererstellung is

   function Erstellung
     return Integer;

private

   ErstellungLäuft : Boolean;
   NameAuswahlLäuft : Boolean;
   GeschlechtAuswahlLäuft : Boolean;
   HauptwerteLäuft : Boolean;
   FertigkeitenLäuft : Boolean;
   SpezielleEigenschaftenLäuft : Boolean;
   SicherLäuft : Boolean;

   Wert : Integer;

   CharaktererstellungEingabe : Unbounded_Wide_Wide_String;

end Charaktererstellung;
