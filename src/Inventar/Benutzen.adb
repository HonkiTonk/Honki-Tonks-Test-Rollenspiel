with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Maps.Wide_Constants;

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
      Put_Line ("Welchen Gegenstand möchten sie benutzen?");
      Put_Line ("Geben sie den Namen oder die Platznummer ein:");
      GegenstandName := EinWort.EinWort;
      
      BenutzenNameSchleife:
      for IDPosition in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           Translate (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (IDPosition).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
         then
            HeilGegenstandBenutzen (IDPosition);
            return True;
            
         else
            null;
         end if;
         
      end loop BenutzenNameSchleife;
      
      return False;
      
   end Benutzen;



   procedure HeilGegenstandBenutzen
     (IDPosition : in Integer)
   is begin
      
      Put_Line ("Sie benutzen " & To_Wide_String (Gegenstanddatenbank.HeilGegenstandListe (IDPosition).Name));
      if
        Gegenstanddatenbank.HeilGegenstandListe (IDPosition).Heilwert > 0
      then
         if
           Charaktere.Hauptcharakter.SonstigeWerte (4) - Charaktere.Hauptcharakter.SonstigeWerte (3) < Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (IDPosition).ID).Heilwert
         then
            Put_Line ("Es wurden " & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (4) - Charaktere.Hauptcharakter.SonstigeWerte (3)) & " Lebenspunkte geheilt.");
            Charaktere.Hauptcharakter.SonstigeWerte (3) := Charaktere.Hauptcharakter.SonstigeWerte (4);
            
         else
            Charaktere.Hauptcharakter.SonstigeWerte (3) := Charaktere.Hauptcharakter.SonstigeWerte (3) + Gegenstanddatenbank.HeilGegenstandListe (IDPosition).Heilwert;
            Put_Line ("Es wurden " & Integer'Wide_Image (Gegenstanddatenbank.HeilGegenstandListe (IDPosition).Heilwert) & " Lebenspunkte geheilt.");
         end if;
         
      elsif
        Gegenstanddatenbank.HeilGegenstandListe (IDPosition).Heilwert < 0
      then
         -- Hier nochmal drüber schauen, wegen Zustandheilung ohne Zustand und Entfernung eines Gegenstandes auch ohne nutzen?
         HeilGegenstandBenutzenSchleife:
         
         for A in Charaktere.Hauptcharakter.Zustände'Range loop
            
            if
              Gegenstanddatenbank.HeilGegenstandListe (IDPosition).Heilwert = Charaktere.Hauptcharakter.Zustände (A)
            then
               Charaktere.Hauptcharakter.Zustände (A) := 0;
               Put_Line ("Sie heilen " & To_Wide_String (Zustaende.Zustände2 (A)) & ".");
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
