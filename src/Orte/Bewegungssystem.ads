with Karten, GlobaleVariablen, EinrichtungDatenbank, UnmoeglicheRichtung;

package Bewegungssystem is
   
   BewegungErlaubt : Boolean;
   
   XPlus : Integer;
   YPlus : Integer;

   procedure Bewegung (Richtung : in Integer);
   function Kollisionsabfrage (Y, X : in Integer) return Boolean;

end Bewegungssystem;
