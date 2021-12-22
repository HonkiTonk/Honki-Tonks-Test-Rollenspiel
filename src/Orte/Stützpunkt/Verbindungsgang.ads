with Ada.Wide_Text_IO, Speichern, ImSpiel, CharakterDatenblatt, Schwierigkeitsgrad, Inventar, Hinzufuegen, LevelUp, Zeit, Kampfsystem, Ada.Strings.Wide_Unbounded, Quest, GegnerFestlegen, Bewegungsrichtung, Objekt, Nicht;
use Ada.Wide_Text_IO;

package Verbindungsgang is

   Läuft : Boolean := True;
   SpindAusgeräumt : Boolean := False;
   TürGeöffnet : Boolean := False;
   SpindGeöffnet : Boolean := False;
   FensterGeöffnet : Boolean := False;
   Startgeld : Boolean := True;

   Wert : Integer;
   Bewegung : Integer;
   AusgewähltesObjekt : Integer;

   function Gang return Integer;

   procedure Info;

end Verbindungsgang;
