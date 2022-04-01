pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Gegnerdatenbank;
with WortZuGanzeZahl;
with EinWort;
with ImKampf;
with Nicht;
with KampfBefehle;

package body Kampfsystem is

   function Kampf
     (GegnerExtern : in GegnerArray)
      return Integer
   is begin

      SpielerBesiegt := False;
      GegnerBesiegt := False;
      Reihenfolge := GegnerExtern;
      Läuft := True;

      GegnerZurücksetzenSchleife:
      for ZurücksetzenGegnerLPSchleifenwert in Gegner'Range loop
         
         Gegnerdatenbank.GegnerListe (Gegner (ZurücksetzenGegnerLPSchleifenwert)).AktuelleLebenspunkteGegner := Gegnerdatenbank.GegnerListe (Gegner (ZurücksetzenGegnerLPSchleifenwert)).GesamteLebenspunkteGegner;
         
      end loop GegnerZurücksetzenSchleife;

      KampfSchleife:
      while Läuft loop

         case
           GegnerBesiegt
         is
            when True =>
               return 1;
               
            when False =>
               null;
         end case;
         
         case
           SpielerBesiegt
         is
            when True =>
               return -1;
               
            when False =>
               null;
         end case;

         Angegriffen := False;
         Verteidigt := False;

         ReihenfolgePrüfenAußenSchleife:
         for PrüfenAußenSchleifenwert in Reihenfolge'Range loop
            ReihenfolgePrüfenInnenSchleife:
            for PrüfenInnenSchleifenwert in Reihenfolge'Range loop
               
               if
                 Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenAußenSchleifenwert)).GeschwindigkeitGegner > Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenInnenSchleifenwert)).GeschwindigkeitGegner
                 and
                   PrüfenAußenSchleifenwert > PrüfenInnenSchleifenwert
               then
                  IDZwischenspeicher1 := Reihenfolge (PrüfenAußenSchleifenwert);
                  IDZwischenspeicher2 := Reihenfolge (PrüfenInnenSchleifenwert);
                  Reihenfolge (PrüfenAußenSchleifenwert) := IDZwischenspeicher2;
                  Reihenfolge (PrüfenInnenSchleifenwert) := IDZwischenspeicher1;
                  
               elsif
                 Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenAußenSchleifenwert)).GeschwindigkeitGegner < Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenInnenSchleifenwert)).GeschwindigkeitGegner
                 and
                   PrüfenAußenSchleifenwert < PrüfenInnenSchleifenwert
               then
                  IDZwischenspeicher1 := Reihenfolge (PrüfenAußenSchleifenwert);
                  IDZwischenspeicher2 := Reihenfolge (PrüfenInnenSchleifenwert);
                  Reihenfolge (PrüfenAußenSchleifenwert) := IDZwischenspeicher2;
                  Reihenfolge (PrüfenInnenSchleifenwert) := IDZwischenspeicher1;
                  
               else
                  null;
               end if;
               
            end loop ReihenfolgePrüfenInnenSchleife;
         end loop ReihenfolgePrüfenAußenSchleife;

         Put_Line (Item => "Sie stehen folgenden Gegnern gegenüber:");
         
         VorhandeneGegnerSchleife:
         for VorhandeneGegnerSchleifenwert in Gegner'Range loop
            MöglicheGegnerSchleife:
            for MöglicheGegnerSchleifenwert in Gegnerdatenbank.GegnerListe'Range loop
               
               GegnerPlatz := 1;
               
               if
                 Gegner (VorhandeneGegnerSchleifenwert) = Gegnerdatenbank.GegnerListe (MöglicheGegnerSchleifenwert).ID
                 and
                   Gegnerdatenbank.GegnerListe (MöglicheGegnerSchleifenwert).ID /= 0
               then
                  Put_Line (Item => Integer'Wide_Wide_Image (GegnerPlatz) & "." & To_Wide_Wide_String (Source => Gegnerdatenbank.GegnerListe (MöglicheGegnerSchleifenwert).Name));
                  GegnerPlatz := GegnerPlatz + 1;
                  exit MöglicheGegnerSchleife;
                  
               else
                  null;
               end if;
            
            end loop MöglicheGegnerSchleife;
         end loop VorhandeneGegnerSchleife;

         Put_Line (Item => "Was möchten sie tun?");
         KampfBefehle.KampfBefehle;

         Wert := ImKampf.ImKampf;

         case
           Wert
         is
            when -1 | 0 | 2 =>
               return Wert;

            when 3 =>
               Nicht.Nicht;

            when 4 =>
               -- Info;
               null;

            when 10 =>
               WelcherGegner;

               if
                 WenAngreifen in 1 .. 5
               then
                  KampfBerechnung;

               else
                  null;
               end if;
               
            when 11 =>
               Verteidigt := True;
               KampfBerechnung;

            when 12 .. 13 =>
               KampfBerechnung;
               
               if
                 Flucht = -1
               then
                  Put_Line (Item => "Ihr Fluchtversuch scheitert.");
                  
               elsif
                 Flucht = 1
               then
                  Put_Line (Item => "Sie fliehen erfolgreich");
                  return -1_000_000;

               else
                  null;
               end if;
                                    
            when others =>
               null;
         end case;
         
      end loop KampfSchleife;

      raise Program_Error;

   end Kampf;



   procedure WelcherGegner
   is begin
      
      Put_Line (Item => "Geben sie den Namen oder die Platznummer des Gegners ein:");
      Text := EinWort.EinWort;

      WelcherGegnerNameSchleife:
      for GegnernameSchleifenwert in Gegner'Range loop
         
         if
           Text = Gegnerdatenbank.GegnerListe (Gegner (GegnernameSchleifenwert)).Name
         then
            WenAngreifen := GegnernameSchleifenwert;
            return;
            
         else
            null;
         end if;
         
      end loop WelcherGegnerNameSchleife;

      Wert := WortZuGanzeZahl.WortZuGanzeZahl (Text);
      WenAngreifenGegnerPlatz := 0;

      case
        Wert
      is
         when 1 .. 5 =>
            WelcherGegnerNummerSchleife:
            for GegnerSchleifenwert in Gegner'Range loop
               
               if
                 Gegner (GegnerSchleifenwert) /= 0
               then
                  WenAngreifenGegnerPlatz := WenAngreifenGegnerPlatz + 1;
                  
                  if
                    WenAngreifenGegnerPlatz = Wert
                  then
                     WenAngreifen := Wert;
                     return;
                     
                  else
                     null;
                  end if;
                  
               else
                  null;
               end if;
               
            end loop WelcherGegnerNummerSchleife;

         when others =>
            null;
      end case;
      
      WenAngreifen := 0;

      Put_Line (Item => "Das ist kein vorhandener Gegner.");
      
   end WelcherGegner;



   procedure KampfBerechnung
   is begin
      
      case
        Verteidigt
      is
         when True =>
            null;
            
         when False =>
            null;
      end case;
      
   end KampfBerechnung;
   
   
   
   procedure Angreifen
   is begin
      
      return;
      
   end Angreifen;
   
   
   
   procedure Verteidigen
   is begin
      
      return;
      
   end Verteidigen;



   procedure Gegenstand
   is begin
      
      return;
      
   end Gegenstand;
   
   
   
   function Fliehen
     return Integer
   is begin
      
      return 20;
      
   end Fliehen;



   procedure GegnerBesiegtPrüfung
   is begin
      
      GegnerPrüfenSchleife:
      for GegnerPrüfenSchleifenwert in Gegner'Range loop
         
         if
           Gegner (GegnerPrüfenSchleifenwert) = 0
         then
            GegnerBesiegt := True;
            
         else
            GegnerBesiegt := False;
            exit GegnerPrüfenSchleife;
         end if;
         
      end loop GegnerPrüfenSchleife;
      
   end GegnerBesiegtPrüfung;
     
     
     
   procedure SpielerBesiegtPrüfung
   is begin
      
      null;
      
   end SpielerBesiegtPrüfung;
                            
end Kampfsystem;
