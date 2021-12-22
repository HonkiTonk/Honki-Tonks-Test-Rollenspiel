package body Inventar is
   
   function Inventar return Integer is
   begin
      
      Läuft := True;
      
      InventarSchleife:
      while Läuft = True loop
      
         Put_Line ("Sie befinden sich im Inventar.");
         Put_Line ("Was möchten sie tun?");
         InventarBefehle.InventarBefehle;
      
         Wert := ImInventar.ImInventar;

         case Wert is
            
            when -1 .. 2 =>
               return Wert;
               
            when 3 =>
               Nicht.Nicht;
               
            when others =>
               null;
               
         end case;
                  
      end loop InventarSchleife;
      
      Put_Line ("Sollte niemals aufgerufen werden Inventar.Inventar nach Schleife.");
      return 0;
      
   end Inventar;
     
end Inventar;
