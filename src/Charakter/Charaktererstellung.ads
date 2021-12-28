with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Charaktererstellung is

   function Erstellung
     return Integer;

private

   ErstellungLäuft : Boolean := True;
   NameAuswahlLäuft : Boolean := True;
   GeschlechtAuswahlLäuft : Boolean := True;
   HauptwerteLäuft : Boolean := True;
   FertigkeitenLäuft : Boolean := True;
   SpezielleEigenschaftenLäuft : Boolean := True;
   SicherLäuft : Boolean := True;

   Wert : Integer;

   CharaktererstellungEingabe : Unbounded_Wide_String;

end Charaktererstellung;
