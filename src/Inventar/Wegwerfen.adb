pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants;

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
      Put_Line (Item => "Welchen Gegenstand möchten sie wegwerfen?");
      GesamterBesitz.GesamterBesitz;
      GegenstandName := EinWort.EinWort;
            
   end Aufteilung;



   procedure Text
     (AuswahlExtern : in Integer)
   is begin
      
      case
        AuswahlExtern
      is
         when -1 =>
            Put_Line (Item => "Dieser Gegenstand befindet sich nicht in ihrem Inventar.");

         when 0 =>
            Put_Line (Item => "Sie werfen nichts weg.");
         
         when 1 .. 999 =>
            Put_Line (Item => "Sie werfen" & Integer'Wide_Wide_Image (Anzahl2) & " mal " & To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 1_001 .. 1_999 =>
            Put_Line (Item => "Sie werfen" & Integer'Wide_Wide_Image (Anzahl2) & " mal " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HeilGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 2_001 .. 2_999 =>
            Put_Line (Item => "Sie werfen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.WaffenGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 3_001 .. 3_999 =>
            Put_Line (Item => "Sie werfen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.RüstungenGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 5_001 .. 5_999 =>
            Put_Line (Item => "Sie werfen" & Integer'Wide_Wide_Image (Anzahl2) & " mal " & To_Wide_Wide_String (Source => Gegenstanddatenbank.KampfGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 6_001 .. 6_999 =>
            Put_Line (Item => "Sie werfen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HelmGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 7_001 .. 7_999 =>
            Put_Line (Item => "Sie werfen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HandGegenstandListe (AuswahlExtern).Name) & " weg.");
            
         when 8_001 .. 8_999 =>
            Put_Line (Item => "Sie werfen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.SchuhGegenstandListe (AuswahlExtern).Name) & " weg.");
            
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
         for SonstigesSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.SonstigesGegenstandListe (Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Anzahl := MengenAngabe.Anzahl (InventarHandelExtern => 1);
               Anzahl2 := Anzahl;
               if
                 Anzahl >= Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).Menge
                 and
                   Anzahl /= 0
               then
                  Anzahl2 := Anzahl2 - (Anzahl - Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).Menge);
                  Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).ID := Gegenstanddatenbank.SonstigesGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).Menge := 0;
                  SortierenInventar.SortierenInventar;
                  Text (AuswahlExtern => SonstigesSchleifenwert);
                  return;
                  
               elsif
                 Anzahl /= 0
               then
                  Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (SonstigesSchleifenwert).Menge - Anzahl;
                  Text (AuswahlExtern => SonstigesSchleifenwert);
                  return;
                  
               else
                  Text (AuswahlExtern => 0);
                  return;
               end if;
               
            else
               null;
            end if;

         end loop SonstigesSchleife;

         Text (AuswahlExtern => -1);

      else
         SonstigesAutomatischSchleife:
         for AutomatischSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).ID := Gegenstanddatenbank.SonstigesGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (AutomatischSchleifenwert).Menge - Anzahl;
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
         for HeilSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.HeilGegenstandListe (Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Anzahl := MengenAngabe.Anzahl (InventarHandelExtern => 1);
               Anzahl2 := Anzahl;
               
               if
                 Anzahl >= Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge
                 and
                   Anzahl /= 0
               then
                  Anzahl2 := Anzahl2 - (Anzahl - Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge);
                  Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).ID := Gegenstanddatenbank.HeilGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge := 0;
                  SortierenInventar.SortierenInventar;
                  Text (AuswahlExtern => HeilSchleifenwert);
                  return;
                  
               elsif
                 Anzahl /= 0
               then
                  Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge - Anzahl;
                  Text (AuswahlExtern => HeilSchleifenwert);
                  return;
                  
               else
                  Text (AuswahlExtern => 0);
                  return;
               end if;
               
            else
               null;
            end if;

         end loop HeilSchleife;

         Text (-1);

      else
         HeilAutomatischSchleife:
         for HeilSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).ID := Gegenstanddatenbank.HeilGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (HeilSchleifenwert).Menge - Anzahl;
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
         for WaffenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.WaffenGegenstandListe (Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).ID := Gegenstanddatenbank.WaffenGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (AuswahlExtern => WaffenSchleifenwert);
               return;
               
            else
               null;
            end if;

         end loop WaffenSchleife;

         Text (AuswahlExtern => -1);

      else
         WaffenAutomatischSchleife:
         for WaffenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).ID := Gegenstanddatenbank.WaffenGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (WaffenSchleifenwert).Menge - Anzahl;
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
         for RüstungenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.RüstungenGegenstandListe (Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).ID := Gegenstanddatenbank.RüstungenGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (AuswahlExtern => RüstungenSchleifenwert);
               return;
               
            else
               null;
            end if;

         end loop RüstungenSchleife;

         Text (AuswahlExtern => -1);

      else
         RüstungAutomatischSchleife:
         for RüstungenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).ID := Gegenstanddatenbank.RüstungenGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (RüstungenSchleifenwert).Menge - Anzahl;
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
         for KampfSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.KampfGegenstandListe (Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Anzahl := MengenAngabe.Anzahl (InventarHandelExtern => 1);
               Anzahl2 := Anzahl;
               if
                 Anzahl >= Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge
                 and
                   Anzahl /= 0
               then
                  Anzahl2 := Anzahl2 - (Anzahl - Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge);
                  Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).ID := Gegenstanddatenbank.KampfGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge := 0;
                  SortierenInventar.SortierenInventar;
                  Text (AuswahlExtern => KampfSchleifenwert);
                  return;
                  
               elsif
                 Anzahl /= 0
               then
                  Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge - Anzahl;
                  Text (AuswahlExtern => KampfSchleifenwert);
                  return;
                  
               else
                  Text (AuswahlExtern => 0);
                  return;
               end if;
               
            else
               null;
            end if;

         end loop KampfSchleife;

         Text (AuswahlExtern => -1);

      else
         KampfAutomatischSchleife:
         for KampfSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).ID := Gegenstanddatenbank.KampfGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (KampfSchleifenwert).Menge - Anzahl;
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
         for HelmSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.HelmGegenstandListe (Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).ID := Gegenstanddatenbank.HelmGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (AuswahlExtern => HelmSchleifenwert);
               return;
               
            else
               null;
            end if;

         end loop HelmSchleife;

         Text (AuswahlExtern => -1);

      else
         HelmAutomatischSchleife:
         for HelmSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).ID := Gegenstanddatenbank.HelmGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (HelmSchleifenwert).Menge - Anzahl;
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
         for HandSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.HandGegenstandListe (Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).ID := Gegenstanddatenbank.HandGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (AuswahlExtern => HandSchleifenwert);
               return;
               
            else
               null;
            end if;

         end loop HandSchleife;

         Text (AuswahlExtern => -1);

      else
         HandAutomatischSchleife:
         for HandSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).ID := Gegenstanddatenbank.HandGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (HandSchleifenwert).Menge - Anzahl;
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
         for SchuhSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Translate (Gegenstanddatenbank.SchuhGegenstandListe (Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).ID).Name, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map) = GegenstandName
            then
               Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).ID := Gegenstanddatenbank.SchuhGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).Menge := 0;
               SortierenInventar.SortierenInventar;
               Text (AuswahlExtern => SchuhSchleifenwert);
               return;
               
            else
               null;
            end if;

         end loop SchuhSchleife;

         Text (AuswahlExtern => -1);

      else
         SchuhAutomatischSchleife:
         for SchuhSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

            if
              Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).ID = IDIntern
            then
               if
                 Anzahl > Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).Menge
               then
                  Prüfung := False;
                  return;
                  
               elsif
                 Anzahl = Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).Menge
               then
                  Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).ID := Gegenstanddatenbank.SchuhGegenstandListe'First;
                  Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).Menge := 0;
                  Prüfung := True;
                  SortierenInventar.SortierenInventar;
                  return;
                  
               else
                  Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (SchuhSchleifenwert).Menge - Anzahl;
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
     (IDExtern : in Integer;
      MengeExtern : in Integer)
      return Boolean
   is begin

      IDIntern := IDExtern;
      Anzahl := MengeExtern;
      
      case
        IDExtern
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
      for QuestSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop

         if
           Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).ID = IDIntern
         then
            if
              Anzahl > Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).Menge
            then
               Prüfung := False;
               return;
               
            elsif
              Anzahl = Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).Menge
            then
               Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).ID := Gegenstanddatenbank.QuestGegenstandListe'First;
               Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).Menge := 0;
               Prüfung := True;
               SortierenInventar.SortierenInventar;
               return;
               
            else
               Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (QuestSchleifenwert).Menge - Anzahl;
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
