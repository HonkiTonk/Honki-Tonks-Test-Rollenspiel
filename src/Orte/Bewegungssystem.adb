with Karten;
with GlobaleVariablen;
with EinrichtungDatenbank;
with UnmoeglicheRichtung;

package body Bewegungssystem is

   procedure Bewegung
     (Richtung : in Integer)
   is begin
      
      case
        Richtung
      is
         when 1 => -- Nach oben
            YPlus := -1;
            
         when 2 => -- Nach oben rechts
            XPlus := 1;
            YPlus := -1;
            
         when 3 => -- Nach rechts
            XPlus := 1;
            
         when 4 => -- Nach rechts unten
            XPlus := 1;
            YPlus := 1;
            
         when 5 => -- Nach unten
            YPlus := 1;
            
         when 6 => -- Nach unten links
            YPlus := 1;
            XPlus := -1;
            
         when 7 => -- Nach links
            XPlus := -1;
            
         when others => -- Nach oben links
            XPlus := -1;
            YPlus := -1;
      end case;
      
      BewegungErlaubt := Kollisionsabfrage (YPlus, XPlus);
      
      case
        BewegungErlaubt
      is
         when True =>
            GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).YPosition := GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).YPosition + YPlus;
            GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).XPosition := GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).YPosition + XPlus;
            
         when False =>
            UnmoeglicheRichtung.UnmöglicheRichtung;
      end case;         
      
   end Bewegung;
   
   
   
   function Kollisionsabfrage
     (Y : in Integer;
      X : in Integer)
      return Boolean
   is begin
      
      if
        EinrichtungDatenbank.EinrichtungListe (Karten.Karte (GlobaleVariablen.Ort, GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).YPosition + Y,
                                               GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).XPosition + X)).Passierbar = True
      then
         return True;
         
      else
         return False;
      end if;
      
   end Kollisionsabfrage;

end Bewegungssystem;
