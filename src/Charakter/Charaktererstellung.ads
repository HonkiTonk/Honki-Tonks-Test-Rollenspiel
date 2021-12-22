with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, HauptwerteAendern, FertigkeitenAendern, Hauptwerte, SpezielleEigenschaftenAuswirkungen, ErstellungSicher, JaNein, SpezielleEigenschaftenAendern, Charaktere, Ada.Integer_Text_IO, Laden, StandardAuswahl, Nicht, Falsch, Fertigkeiten, SpezielleEigenschaften, FertigkeitenErstellungBerechnen;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Charaktererstellung is

   ErstellungLäuft : Boolean := True;
   NameAuswahlLäuft : Boolean := True;
   GeschlechtAuswahlLäuft : Boolean := True;
   HauptwerteLäuft : Boolean := True;
   FertigkeitenLäuft : Boolean := True;
   SpezielleEigenschaftenLäuft : Boolean := True;
   SicherLäuft : Boolean := True;

   Wert : Integer;

   CharaktererstellungEingabe : Unbounded_Wide_String;

   function Erstellung return Integer;

end Charaktererstellung;
