package Bewegungssystem is
      
   procedure Bewegung
     (Richtung : in Integer);
   
private
   
   BewegungErlaubt : Boolean;
   
   XPlus : Integer;
   YPlus : Integer;
   
   function Kollisionsabfrage
     (Y : in Integer;
      X : in Integer)
      return Boolean;

end Bewegungssystem;
