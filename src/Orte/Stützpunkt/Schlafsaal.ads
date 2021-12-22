with Ada.Wide_Text_IO, Speichern, Bewegungssystem, ImSpiel, CharakterDatenblatt, Schwierigkeitsgrad, UnmoeglicheRichtung, Hinzufuegen, Inventar, LevelUp, Zeit, Ada.Strings.Wide_Unbounded, Charaktere, Quest, Bewegungsrichtung, Objekt, Nicht, StandardBefehle, Karten, VomSpielerWeggeworfen;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Schlafsaal is

   Läuft : Boolean := True;
   Start : Boolean := True;
   SpindAusgeräumt : Boolean := False;
   TürGeöffnet : Boolean := False;
   SpindGeöffnet : Boolean := False;
   FensterGeöffnet : Boolean := False;
   Startgeld : Boolean := True;

   Wert : Integer;
   Bewegung : Integer;
   AusgewähltesObjekt : Integer;

   function Schlafsaal return Integer;
   function Gehen return Integer;
   function Auswählen (Entscheidungswert : in Integer) return Integer;

   procedure Info;
   procedure Benutzen (Objekt : in Integer);
   procedure Sprechen (Objekt : in Integer);
   procedure Öffnen (Objekt : in Integer);
   procedure Schließen (Objekt : in Integer);
   procedure Nehmen (Objekt : in Integer);
   procedure Anschauen (Objekt : in Integer);

end Schlafsaal;
