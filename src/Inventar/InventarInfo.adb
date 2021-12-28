with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Maps.Wide_Constants;

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
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map)
         then
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name));
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Beschreibung));
            Put_Line ("Wert: " & Integer'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Wert) & " Geld");
            Put_Line ("Gewicht: " & Float'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end SonstigesInventar;



   procedure HeilInventar
   is begin
      
      InfoHeilInventarSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map)
         then
            Put_Line (To_Wide_String (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name));
            Put_Line (To_Wide_String (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Beschreibung));
            Put_Line ("Wert: " & Integer'Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Wert) & " Geld");
            Put_Line ("Gewicht: " & Float'Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Gewicht) & " Kilogramm");
            if
              Charaktere.Hauptcharakter.Inventar (A).ID > 0
            then
               Put_Line ("Heilt " & Integer'Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Heilwert) & " Lebenspunkte.");
               
            elsif
              Charaktere.Hauptcharakter.Inventar (A).ID < 0
            then
                -- Put_Line ("Heilt " & To_Wide_String (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.HeilInventar (A).ID).Heilwert));
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
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map)
         then
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name));
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Beschreibung));
            Put_Line ("Wert: " & Integer'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Wert) & " Geld");
            Put_Line ("Gewicht: " & Float'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end WaffenInventar;



   procedure RüstungsInventar
   is begin
      
      InfoSonstigesInventarSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map)
         then
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name));
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Beschreibung));
            Put_Line ("Wert: " & Integer'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Wert) & " Geld");
            Put_Line ("Gewicht: " & Float'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end RüstungsInventar;



   procedure QuestInventar
   is begin
      
      InfoSonstigesInventarSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           GegenstandAuswahl = Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map)
         then
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name));
            Put_Line (To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Beschreibung));
            Put_Line ("Wert: " & Integer'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Wert) & " Geld");
            Put_Line ("Gewicht: " & Float'Wide_Image (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Gewicht) & " Kilogramm");
            
         else
            null;
         end if;
         
      end loop InfoSonstigesInventarSchleife;
      
   end QuestInventar;

end InventarInfo;
