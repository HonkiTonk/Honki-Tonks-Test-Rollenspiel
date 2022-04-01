pragma Warnings (Off, "*array aggregate*");

package Bewegungssystem is
      
   procedure Bewegung
     (RichtungExtern : in Positive);
   
private
   
   BewegungErlaubt : Boolean;
   
   XPlus : Integer;
   YPlus : Integer;
   
   function Kollisionsabfrage
     (YExtern : in Integer;
      XExtern : in Integer)
      return Boolean;

end Bewegungssystem;
