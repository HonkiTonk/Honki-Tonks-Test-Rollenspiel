with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with Gegenstanddatenbank;
with Charaktere;
with SortierenInventar;
with EinWort;
with Wegwerfen;

package body AusruestenWaffen is

   procedure AusrüstenWaffen
     (IDPosition : in Integer)
   is begin    
      
      if
        Gegenstanddatenbank.WaffenGegenstandListe (Charaktere.Hauptcharakter.Inventar (IDPosition).ID).Hand = 2
      then
         if
           Charaktere.Hauptcharakter.WaffenAusgerüstet (1) = 0
           and
             Charaktere.Hauptcharakter.WaffenAusgerüstet (2) = 0
         then
            Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := 0;
            SortierenInventar.SortierenInventar;
            return;
            
         elsif
           Charaktere.Hauptcharakter.WaffenAusgerüstet (1) = 0
           and
             Charaktere.Hauptcharakter.WaffenAusgerüstet (2) /= 0
         then
            ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (2);
            Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
            return;
            
         elsif
           Charaktere.Hauptcharakter.WaffenAusgerüstet (1) /= 0
           and
             Charaktere.Hauptcharakter.WaffenAusgerüstet (2) = 0
         then
            ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (1);
            Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
            return;
            
         elsif
           Gegenstanddatenbank.WaffenGegenstandListe (Charaktere.Hauptcharakter.WaffenAusgerüstet (1)).Hand = 2
         then
            ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (1);
            Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
            return;
            
         else
            FreierPlatz := 0;
            AusrüstenSchleife:
            while AusrüstenLäuft loop
               FreierPlatzSchleife:
               for B in Charaktere.Hauptcharakter.Inventar'Range loop
                  
                  if
                    Charaktere.Hauptcharakter.Inventar (B).ID = 0
                  then
                     FreierPlatz := B;
                     exit FreierPlatzSchleife when FreierPlatz /= 0; 
                     
                  else
                     null;
                  end if;
                  
               end loop FreierPlatzSchleife;

               case
                 FreierPlatz
               is
                  when 0 =>
                     Put_Line ("Sie haben keinen freien Inventarplatz mehr um ihre ausgerüsteten Pistolen abzulegen.");
                     Put_Line ("Möchten sie etwas wegwerfen?");
                     Put_Line ("Inventar, Ausgerüstet, Beliebige andere Eingabe um nichts wegzuwerfen.");
                     Auswahl := EinWort.EinWort;

                     if
                       Auswahl = "inventar"
                     then
                        Wegwerfen.Aufteilung;
                        
                     elsif
                       Auswahl = "ausgerüstet"
                     then
                        Wegwerfen.Aufteilung;
                        
                     elsif
                       Auswahl = "beliebige andere eingabe um nichts wegzuwerfen"
                     then
                        Put_Line ("Und jetzt drücken sie die Anykey-Taste.");
                        return;
                        
                     else
                        Put_Line ("Sie rüsten die Waffe nicht aus.");
                        return;
                     end if;
                                             
                  when others =>
                     ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (1);
                     ZwischenspeicherID2 := Charaktere.Hauptcharakter.WaffenAusgerüstet (2);
                     Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
                     Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
                     Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
                     Charaktere.Hauptcharakter.Inventar (FreierPlatz).ID := ZwischenspeicherID2;
                     return;
               end case;
               
            end loop AusrüstenSchleife;
         end if;
        
      else
         if
           Charaktere.Hauptcharakter.WaffenAusgerüstet (2) = 0
         then
            Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := 0;
            SortierenInventar.SortierenInventar;
            return;
            
         elsif
           Charaktere.Hauptcharakter.WaffenAusgerüstet (1) = 0
         then
            Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := 0;
            SortierenInventar.SortierenInventar;
            return;
            
         elsif
           Gegenstanddatenbank.WaffenGegenstandListe (Charaktere.Hauptcharakter.WaffenAusgerüstet (2)).Hand = 2
         then
            ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (2);
            Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := 0;
            Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
            return;
            
         else
            Put_Line ("Sie haben bereits zwei Pistolen ausgerüstet, möchten sie eine ablegen?");
            Put_Line ("Links, Rechts, Beliebige andere Eingabe um keine Waffe auszutauschen.");
            Auswahl := EinWort.EinWort;

            if
              Auswahl = "links"
            then
               ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (1);
               Charaktere.Hauptcharakter.WaffenAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
               Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
               return;
               
            elsif
              Auswahl = "rechts"
            then
               ZwischenspeicherID1 := Charaktere.Hauptcharakter.WaffenAusgerüstet (2);
               Charaktere.Hauptcharakter.WaffenAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
               Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID1;
               return;
               
            elsif
              Auswahl = "beliebige andere eingabe um keine Waffe auszutauschen"
            then
               Put_Line ("Und jetzt drücken sie die Anykey-Taste.");
               return;
               
            else
               Put_Line ("Sie rüsten die Waffe nicht aus.");
               return;
            end if;
         end if;
      end if;
      
   end AusrüstenWaffen;

end AusruestenWaffen;
