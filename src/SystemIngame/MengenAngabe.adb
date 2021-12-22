package body MengenAngabe is

   function Anzahl (InventarHandel : in Integer) return Integer is
   begin

      Zahl := 0;
      Prüfung := True;

      case InventarHandel is
         when 1 =>
            Put_Line ("Wie viel möchten sie wegwerfen?");
            Put_Line ("Geben sie eine Zahl zwischen 0 und 999.999.999 oder ALLES ein:");
         when 2 =>
            Put_Line ("Wie viel möchten sie verkaufen?");
            Put_Line ("Geben sie eine Zahl zwischen 0 und 999.999.999 oder ALLES ein:");
         when others =>
            Put_Line ("Sollte niemals aufgerufen werden MengenAngabe.Anzahl.");
      end case;
      
      --Menge := GanzeZahl.GanzeZahl;

      if Menge = "alles" then
         return 1_000_000_000;
      elsif To_Wide_String (Menge)'Length <= 9 then
         ZahlKleinerNeun;

         case Prüfung is
         
         when True =>
            return Integer'Wide_Value (To_Wide_String (Menge));
            
         when False =>
            Put_Line ("Das ist keine gültige Mengenangabe.");
            return 0;
            
         end case;
         
      else         
         Put_Line ("Das ist keine gültige Mengenangabe.");
         return 0;
      end if;

   end Anzahl;



   procedure ZahlKleinerNeun is
   begin
      
      PrüfungsSchleife:
      for A in To_Wide_String (Menge)'Range loop
         if To_Wide_String (Menge) (A) = '1' or To_Wide_String (Menge) (A) = '2' or To_Wide_String (Menge) (A) = '3' or To_Wide_String (Menge) (A) = '4' or
           To_Wide_String (Menge) (A) = '5' or To_Wide_String (Menge) (A) = '6' or To_Wide_String (Menge) (A) = '7' or To_Wide_String (Menge) (A) = '8' or
           To_Wide_String (Menge) (A) = '9' or To_Wide_String (Menge) (A) = '0' then
            Prüfung := True;
         else
            Prüfung := False;
            return;
         end if;
      end loop PrüfungsSchleife;

   end ZahlKleinerNeun;

end MengenAngabe;
