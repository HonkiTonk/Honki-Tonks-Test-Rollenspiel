package Schlafsaal is

   Start : Boolean := True;
   SpindAusgeräumt : Boolean := False;
   TürGeöffnet : Boolean := False;
   SpindGeöffnet : Boolean := False;
   FensterGeöffnet : Boolean := False;



   function Schlafsaal
     return Integer;

private

   Läuft : Boolean := True;
   Startgeld : Boolean := True;

   Wert : Integer;
   Bewegung : Integer;
   AusgewähltesObjekt : Integer;

   procedure Info;

   procedure Benutzen
     (Objekt : in Integer);

   procedure Sprechen
     (Objekt : in Integer);

   procedure Öffnen
     (Objekt : in Integer);

   procedure Schließen
     (Objekt : in Integer);

   procedure Nehmen
     (Objekt : in Integer);

   procedure Anschauen
     (Objekt : in Integer);



   function Gehen
     return Integer;

   function Auswählen
     (Entscheidungswert : in Integer)
      return Integer;

end Schlafsaal;
