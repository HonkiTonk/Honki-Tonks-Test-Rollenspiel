pragma Warnings (Off, "*array aggregate*");

with Schwierigkeitsgrad;

package body GegnerFestlegen is

   function GegnerZufall
     (OrtExtern : in Integer)
      return Integer
   is begin
      
      case
        Schwierigkeitsgrad.Schwierigkeit
      is
         when 1 =>
            if
              OrtExtern = 101
            then
               PositionSchleife:
               for PositionSchleifenwert in Gegner'Range loop
                  
                  Reset (GegnerGenerator);
                  
                  if
                    PositionSchleifenwert > 1
                  then
                     Gegner (PositionSchleifenwert) := Random (GegnerGenerator);
                     
                  else
                     Gegner (PositionSchleifenwert) := Random (GegnerGenerator);
                     
                     if
                       Gegner (PositionSchleifenwert) = 0
                     then
                        Gegner (PositionSchleifenwert) := 1;
                        
                     else
                        null;
                     end if;
                  end if;
                  
               end loop PositionSchleife;
               
            else
               raise Program_Error;
            end if;
            
         when 2 =>
            null;
            
         when 3 =>
            null;
            
         when others =>
            raise Program_Error;
      end case;

      Wert := Kampfsystem.Kampf (GegnerExtern => Gegner);
      
      return Wert;
      
   end GegnerZufall;
   
   
   
   function GegnerFest
     return Integer
   is begin
      
      return 0;
      
   end GegnerFest;

end GegnerFestlegen;
