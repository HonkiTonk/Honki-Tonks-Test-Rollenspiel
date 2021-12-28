package Verbindungsgang is

   function Gang
     return Integer;

private

   Läuft : Boolean := True;
   SpindAusgeräumt : Boolean := False;
   TürGeöffnet : Boolean := False;
   SpindGeöffnet : Boolean := False;
   FensterGeöffnet : Boolean := False;
   Startgeld : Boolean := True;

   Wert : Integer;
   Bewegung : Integer;
   AusgewähltesObjekt : Integer;

   procedure Info;

end Verbindungsgang;
