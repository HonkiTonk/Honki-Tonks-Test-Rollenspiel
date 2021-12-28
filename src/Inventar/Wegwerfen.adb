with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Maps.Wide_Constants;

with Charaktere;
with SortierenInventar;
with EinWort;
with GesamterBesitz;
with Gegenstanddatenbank;
with MengenAngabe;
  
package body Wegwerfen is

   procedure Aufteilung
   is begin

      IDIntern := 0;
      Put_Line ("Welchen Gegenstand möchten sie wegwerfen?");
      GesamterBesitz.GesamterBesitz;
      GegenstandName := EinWort.EinWort;
            
   end Aufteilung;



   procedure Text
     (Auswahl : in Integer)
   is begin
      
      case
        Auswahl
      is
         when -1 =>
            Put_Line ("Dieser Gegenstand befindet sich nicht in ihrem Inventar.");

         when 0 =>
            Put_Line ("Sie werfen nichts weg.");
         
         when 1 .. 999 =>
            Put_Line ("Sie werfen" & Integer'Wide_Image (Anzahl2) & " mal " & To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (Auswahl).Name) & " weg.");
            
         when 1001 .. 1999 =>
            Put_Line ("Sie werfen" & Integer'Wide_Image (Anzahl2) & " mal " & To_Wide_String (Gegenstanddatenbank.HeilGegenstandListe (Auswahl).Name) & " weg.");
            
         when 2001 .. 2999 =>
            Put_Line ("Sie werfen " & To_Wide_String (Gegenstanddatenbank.WaffenGegenstandListe (Auswahl).Name) & " weg.");
            
         when 3001 .. 3999 =>
            Put_Line ("Sie werfen " & To_Wide_String (Gegenstanddatenbank.RüstungenGegenstandListe (Auswahl).Name) & " weg.");
            
         when 5001 .. 5999 =>
            Put_Line ("Sie werfen" & Integer'Wide_Image (Anzahl2) & " mal " & To_Wide_String (Gegenstanddatenbank.KampfGegenstandListe (Auswahl).Name) & " weg.");
            
         when 6001 .. 6999 =>
            Put_Line ("Sie werfen " & To_Wide_String (Gegenstanddatenbank.HelmGegenstandListe (Auswahl).Name) & " weg.");
            
         when 7001 .. 7999 =>
            Put_Line ("Sie werfen " & To_Wide_String (Gegenstanddatenbank.HandGegenstandListe (Auswahl).Name) & " weg.");
            
         when 8001 .. 8999 =>
            Put_Line ("Sie werfen " & To_Wide_String (Gegenstanddatenbank.SchuhGegenstandListe (Auswahl).Name) & " weg.");
            
         when others =>
            raise Program_Error;
      end case;
      
   end Text;
   
   

   procedure WegwerfenSonstiges
   is begin

      if
        IDIntern = 0
      then
         SonstigesSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Anzahl := MengenAngabe.Anzahl (1);
               Anzahl2 := Anzahl;
               if
                 Anzahl >= Charaktere.Hauptcharakter.Inventar (A).Menge
                 and
                   Anzahl /= 0
               then
                  Anzahl2 := Anzahl2 - (Anzahl - Charaktere.Hauptcharakter.Inventar (A).Menge);
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.SonstigesGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  SortierenInventar.SortierenInventar;
                  Text (A);
                  return;
                  
               elsif
                 Anzahl /= 0
               then
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Text (A);
                  return;
                  
               else
                  Text (0);
                  return;
               end if;
               
            else
               null;
            end if;

         end loop SonstigesSchleife;

         Text (-1);

      else
         SonstigesAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.SonstigesGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop SonstigesAutomatischSchleife;
         Prüfung := False;
      end if;
      
   end WegwerfenSonstiges;
   
   
   
   procedure WegwerfenHeil
   is begin
      
      if
        IDIntern = 0
      then
         HeilSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Anzahl := MengenAngabe.Anzahl (1);
               Anzahl2 := Anzahl;
               if
                 Anzahl >= Charaktere.Hauptcharakter.Inventar (A).Menge
                 and
                   Anzahl /= 0
               then
                  Anzahl2 := Anzahl2 - (Anzahl - Charaktere.Hauptcharakter.Inventar (A).Menge);
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.HeilGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  SortierenInventar.SortierenInventar;
                  Text (A);
                  return;
                  
               elsif
                 Anzahl /= 0
               then
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Text (A);
                  return;
                  
               else
                  Text (0);
                  return;
               end if;
               
            else
               null;
            end if;

         end loop HeilSchleife;

         Text (-1);

      else
         HeilAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.HeilGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop HeilAutomatischSchleife;
         Prüfung := False;
      end if;
      
   end WegwerfenHeil;
   
   
   
   procedure WegwerfenWaffen
   is begin
      
      if
        IDIntern = 0
      then
         WaffenSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.WaffenGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.WaffenGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (A);
               return;
               
            else
               null;
            end if;

         end loop WaffenSchleife;

         Text (-1);

      else
         WaffenAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.WaffenGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop WaffenAutomatischSchleife;
         Prüfung := False;
      end if;
      
   end WegwerfenWaffen;
   
   

   procedure WegwerfenRüstungen
   is begin
      
      if
        IDIntern = 0
      then
         RüstungenSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.RüstungenGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.RüstungenGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (A);
               return;
               
            else
               null;
            end if;

         end loop RüstungenSchleife;

         Text (-1);

      else
         RüstungAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.RüstungenGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop RüstungAutomatischSchleife;
         Prüfung := False;
      end if;
      
   end WegwerfenRüstungen;
   
   

   procedure WegwerfenKampf
   is begin
      
      if
        IDIntern = 0
      then
         KampfSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.KampfGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Anzahl := MengenAngabe.Anzahl (1);
               Anzahl2 := Anzahl;
               if
                 Anzahl >= Charaktere.Hauptcharakter.Inventar (A).Menge
                 and
                   Anzahl /= 0
               then
                  Anzahl2 := Anzahl2 - (Anzahl - Charaktere.Hauptcharakter.Inventar (A).Menge);
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.KampfGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  SortierenInventar.SortierenInventar;
                  Text (A);
                  return;
                  
               elsif
                 Anzahl /= 0
               then
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Text (A);
                  return;
                  
               else
                  Text (0);
                  return;
               end if;
               
            else
               null;
            end if;

         end loop KampfSchleife;

         Text (-1);

      else
         KampfAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.KampfGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop KampfAutomatischSchleife;
         Prüfung := False;
      end if;
      
   end WegwerfenKampf;
   
   

   procedure WegwerfenHelm
   is begin
      
      if
        IDIntern = 0
      then
         HelmSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.HelmGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.HelmGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (A);
               return;
               
            else
               null;
            end if;

         end loop HelmSchleife;

         Text (-1);

      else
         HelmAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.HelmGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop HelmAutomatischSchleife;
         Prüfung := False;
      end if;

   end WegwerfenHelm;
   
   

   procedure WegwerfenHand
   is begin
      
      if
        IDIntern = 0
      then
         HandSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.HandGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.HandGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (A);
               return;
               
            else
               null;
            end if;

         end loop HandSchleife;

         Text (-1);

      else
         HandAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.HandGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop HandAutomatischSchleife;
         Prüfung := False;
      end if;
      
   end WegwerfenHand;
   
   

   procedure WegwerfenSchuh
   is begin
      
      if
        IDIntern = 0
      then
         SchuhSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.SchuhGegenstandListe (Charaktere.Hauptcharakter.Inventar (A).ID).Name, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.SchuhGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (A);
               return;
               
            else
               null;
            end if;

         end loop SchuhSchleife;

         Text (-1);

      else
         SchuhAutomatischSchleife:
         for A in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.SchuhGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
                  Prüfung := True;
                  return;
               end if;
               
            else
               null;
            end if;

         end loop SchuhAutomatischSchleife;
         Prüfung := False;
      end if;
   
   end WegwerfenSchuh;



   function WegwerfenAutomatisch
     (ID : in Integer;
      Menge : in Integer)
      return Boolean
   is begin

      IDIntern := ID;
      Anzahl := Menge;
      
      case
        ID
      is
         when 1 .. 999 =>
            WegwerfenSonstiges;
            return Prüfung;
            
         when 1001 .. 1999 =>
            WegwerfenHeil;
            return Prüfung;
            
         when 2001 .. 2999 =>
            WegwerfenWaffen;
            return Prüfung;
            
         when 3001 .. 3999 =>
            WegwerfenRüstungen;
            return Prüfung;
            
         when 4001 .. 4999 =>
            WegwerfenQuest;
            return Prüfung;
            
         when 5001 .. 5999 =>
            WegwerfenKampf;
            return Prüfung;
            
         when 6001 .. 6999 =>
            WegwerfenHelm;
            return Prüfung;
            
         when 7001 .. 7999 =>
            WegwerfenHand;
            return Prüfung;
            
         when 8001 .. 8999 =>
            WegwerfenSchuh;
            return Prüfung;

         when others =>
            raise Program_Error;
      end case;
      
   end WegwerfenAutomatisch;
      
      
      
   procedure WegwerfenQuest
   is begin
      
      QuestAutomatischSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop

         if
           Charaktere.Hauptcharakter.Inventar (A).ID = IDIntern
         then
            if
              Anzahl > Charaktere.Hauptcharakter.Inventar (A).Menge
            then
               Prüfung := False;
               return;
               
            elsif
              Anzahl = Charaktere.Hauptcharakter.Inventar (A).Menge
            then
               Charaktere.Hauptcharakter.Inventar (A).ID := Gegenstanddatenbank.QuestGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (A).Menge := 0;
               Prüfung := True;
               SortierenInventar.SortierenInventar;
               return;
               
            else
               Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge - Anzahl;
               Prüfung := True;
               return;
            end if;
            
         else
            null;
         end if;

      end loop QuestAutomatischSchleife;
      
      Prüfung := False;
         
   end WegwerfenQuest;

end Wegwerfen;
