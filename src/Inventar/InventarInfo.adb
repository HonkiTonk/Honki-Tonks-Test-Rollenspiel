pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants;

with Charaktere;
with EinWort;
with Gegenstanddatenbank;
  
package body InventarInfo is

   procedure Verteilung
   is begin
      
      GegenstandAuswahl := EinWort.EinWort;
      
   end Verteilung;



   procedure SonstigesInventar
   is begin
      
      InfoSonstigesInventarSchleife:
      for InfoSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map)
         then
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name));
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Beschreibung));
            Put_Line (Item => "Wert: " & Integer'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Wert) & " Geld");
            Put_Line (Item => "Gewicht: " & Float'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end SonstigesInventar;



   procedure HeilInventar
   is begin
      
      InfoHeilInventarSchleife:
      for InfoSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map)
         then
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name));
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Beschreibung));
            Put_Line (Item => "Wert: " & Integer'Wide_Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Wert) & " Geld");
            Put_Line (Item => "Gewicht: " & Float'Wide_Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Gewicht) & " Kilogramm");
            if
              Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID > 0
            then
               Put_Line (Item => "Heilt " & Integer'Wide_Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Heilwert) & " Lebenspunkte.");
               
            elsif
              Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID < 0
            then
               -- Put_Line (Item => "Heilt " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.HeilInventar (InfoSchleifenwert).ID).Heilwert));
               null;
               
            else
               raise Program_Error;
            end if;
            
         else
            null;
         end if;
         
      end loop InfoHeilInventarSchleife;
      
   end HeilInventar;



   procedure WaffenInventar
   is begin
      
      InfoSonstigesInventarSchleife:
      for InfoSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map)
         then
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name));
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Beschreibung));
            Put_Line (Item => "Wert: " & Integer'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Wert) & " Geld");
            Put_Line (Item => "Gewicht: " & Float'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end WaffenInventar;



   procedure RüstungsInventar
   is begin
      
      InfoSonstigesInventarSchleife:
      for InfoSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map)
         then
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name));
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Beschreibung));
            Put_Line (Item => "Wert: " & Integer'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Wert) & " Geld");
            Put_Line (Item => "Gewicht: " & Float'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end RüstungsInventar;



   procedure QuestInventar
   is begin
      
      InfoSonstigesInventarSchleife:
      for InfoSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map)
         then
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Name));
            Put_Line (Item => To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Beschreibung));
            Put_Line (Item => "Wert: " & Integer'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Wert) & " Geld");
            Put_Line (Item => "Gewicht: " & Float'Wide_Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (InfoSchleifenwert).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end QuestInventar;

end InventarInfo;
