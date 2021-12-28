with Schwierigkeitsgrad;

package body GegnerFestlegen is

   function GegnerZufall
     (Ort : in Integer)
      return Integer
   is begin
      
      case
        Schwierigkeitsgrad.Schwierigkeit
      is
         when 1 =>
            if
              Ort = 101
            then
               for Position in Gegner'Range loop
                  
                  Reset (GegnerGenerator);
                  if
                    Position > 1
                  then
                     Gegner (Position) := Random (GegnerGenerator);
                     
                  else
                     Gegner (Position) := Random (GegnerGenerator);
                     if
                       Gegner (Position) = 0
                     then
                        Gegner (Position) := 1;
                        
                     else
                        null;
                     end if;
                  end if;
                  
               end loop;
               
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

      Wert := Kampfsystem.Kampf (Gegner);
      
      return Wert;
      
   end GegnerZufall;
   
   
   
   function GegnerFest
     return Integer
   is begin
      
      return 0;
      
   end GegnerFest;

end GegnerFestlegen;
