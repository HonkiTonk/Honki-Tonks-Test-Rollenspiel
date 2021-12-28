with LokalerHubStuetzpunkt;
with Zeit;

package body GlobalerHub is

   function VerteilungGlobal
     return Integer
   is
      
      task ZeitStart;
      
      task body ZeitStart
      is begin

         delay 0.01;
         
         while OrteAuswahlGlobal /= -1 or OrteAuswahlGlobal /= 0 or OrteAuswahlGlobal /= 2 loop
            
            Zeit.Uhrzeit;
            
         end loop;
         
      end ZeitStart;
      
   begin

      SpielLäuft := True;

      SpielLäuftSchleife:
      while SpielLäuft loop
       
         -- 10 .. 99
         case
           OrteAuswahlGlobal
         is
            when -1 | 0 | 2 =>
               return OrteAuswahlGlobal;
            
            when 10 =>
               OrteAuswahlGlobal := LokalerHubStuetzpunkt.VerteilungLokalStützpunkt;
               
            when 11 =>
               OrteAuswahlGlobal := 0;
               
            when 12 =>
               OrteAuswahlGlobal := 0;
               
            when others =>
               raise Program_Error;
         end case;

      end loop SpielLäuftSchleife;
            
      raise Program_Error;
      
   end VerteilungGlobal;

end GlobalerHub;
