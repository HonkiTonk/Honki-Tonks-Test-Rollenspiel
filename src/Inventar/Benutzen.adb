pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants;

with Charaktere;
with EinWort;
with Gegenstanddatenbank;
with Zustaende;
with GesamterBesitz;
  
package body Benutzen is

   function Benutzen
     return Boolean
   is begin
      
      GesamterBesitz.GesamterBesitz;
      Put_Line (Item => "Welchen Gegenstand möchten sie benutzen?");
      Put_Line (Item => "Geben sie den Namen oder die Platznummer ein:");
      GegenstandName := EinWort.EinWort;
      
      BenutzenNameSchleife:
      for IDPositionSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           Translate (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (IDPositionSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
         then
            HeilGegenstandBenutzen (IDPositionSchleifenwert);
            return True;
            
         else
            null;
         end if;
         
      end loop BenutzenNameSchleife;
      
      return False;
      
   end Benutzen;



   procedure HeilGegenstandBenutzen
     (IDPositionExtern : in Integer)
   is begin
      
      Put_Line (Item => "Sie benutzen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HeilGegenstandListe (IDPositionExtern).Name));
      if
        Gegenstanddatenbank.HeilGegenstandListe (IDPositionExtern).Heilwert > 0
      then
         if
           Charaktere.Hauptcharakter.SonstigeWerte (4) - Charaktere.Hauptcharakter.SonstigeWerte (3) < Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID).Heilwert
         then
            Put_Line (Item => "Es wurden " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (4) - Charaktere.Hauptcharakter.SonstigeWerte (3)) & " Lebenspunkte geheilt.");
            Charaktere.Hauptcharakter.SonstigeWerte (3) := Charaktere.Hauptcharakter.SonstigeWerte (4);
            
         else
            Charaktere.Hauptcharakter.SonstigeWerte (3) := Charaktere.Hauptcharakter.SonstigeWerte (3) + Gegenstanddatenbank.HeilGegenstandListe (IDPositionExtern).Heilwert;
            Put_Line (Item => "Es wurden " & Integer'Wide_Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (IDPositionExtern).Heilwert) & " Lebenspunkte geheilt.");
         end if;
         
      elsif
        Gegenstanddatenbank.HeilGegenstandListe (IDPositionExtern).Heilwert < 0
      then
         -- Hier nochmal drüber schauen, wegen Zustandheilung ohne Zustand und Entfernung eines Gegenstandes auch ohne nutzen?
         HeilGegenstandBenutzenSchleife:
         for GegenstandSchleifenwert in Charaktere.Hauptcharakter.Zustände'Range loop
            
            if
              Gegenstanddatenbank.HeilGegenstandListe (IDPositionExtern).Heilwert = Charaktere.Hauptcharakter.Zustände (GegenstandSchleifenwert)
            then
               Charaktere.Hauptcharakter.Zustände (GegenstandSchleifenwert) := 0;
               Put_Line (Item => "Sie heilen " & To_Wide_Wide_String (Source => Zustaende.Zustände2 (GegenstandSchleifenwert)) & ".");
               return;
               
            else
               null;
            end if;
            
         end loop HeilGegenstandBenutzenSchleife;
         
      else
         raise Program_Error;
      end if;
      
   end HeilGegenstandBenutzen;

end Benutzen;
