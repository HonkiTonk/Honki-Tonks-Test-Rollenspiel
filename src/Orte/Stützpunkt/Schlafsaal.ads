pragma Warnings (Off, "*array aggregate*");

package Schlafsaal is

   Start : Boolean := True;
   SpindAusgeräumt : Boolean := False;
   TürGeöffnet : Boolean := False;
   SpindGeöffnet : Boolean := False;
   FensterGeöffnet : Boolean := False;



   function Schlafsaal
     return Integer;

private

   Läuft : Boolean;
   Startgeld : Boolean := True;

   Wert : Integer;
   Bewegung : Integer;
   AusgewähltesObjektExtern : Integer;

   procedure Info;

   procedure Benutzen
     (ObjektExtern : in Integer);

   procedure Sprechen
     (ObjektExtern : in Integer);

   procedure Öffnen
     (ObjektExtern : in Integer);

   procedure Schließen
     (ObjektExtern : in Integer);

   procedure Nehmen
     (ObjektExtern : in Integer);

   procedure Anschauen
     (ObjektExtern : in Integer);



   function Gehen
     return Integer;

   function Auswählen
     (EntscheidungswertExtern : in Integer)
      return Integer;

end Schlafsaal;
