package body Kampfsystem is

   function Kampf (Gegner : in GegnerArray) return Integer is
   begin

      SpielerBesiegt := False;
      GegnerBesiegt := False;
      Reihenfolge := Gegner;
      Läuft := True;

      GegnerZurücksetzenSchleife:
      for ZurücksetzenGegnerLP in Gegner'Range loop
         Gegnerdatenbank.GegnerListe (Gegner (ZurücksetzenGegnerLP)).AktuelleLebenspunkteGegner := Gegnerdatenbank.GegnerListe (Gegner (ZurücksetzenGegnerLP)).GesamteLebenspunkteGegner;
      end loop GegnerZurücksetzenSchleife;

      KampfSchleife:
      while Läuft = True loop

         case GegnerBesiegt is
            when True =>
               return 1;
               
            when False =>
               null;
               
         end case;
         
         case SpielerBesiegt is
            when True =>
               return -1;
               
            when False =>
               null;
               
         end case;

         Angegriffen := False;
         Verteidigt := False;

         ReihenfolgePrüfenAußenSchleife:
         for PrüfenAußen in Reihenfolge'Range loop
            ReihenfolgePrüfenInnenSchleife:
            for PrüfenInnen in Reihenfolge'Range loop
               
               if Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenAußen)).GeschwindigkeitGegner > Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenInnen)).GeschwindigkeitGegner and PrüfenAußen > PrüfenInnen then
                  IDZwischenspeicher1 := Reihenfolge (PrüfenAußen);
                  IDZwischenspeicher2 := Reihenfolge (PrüfenInnen);
                  Reihenfolge (PrüfenAußen) := IDZwischenspeicher2;
                  Reihenfolge (PrüfenInnen) := IDZwischenspeicher1;
               elsif Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenAußen)).GeschwindigkeitGegner < Gegnerdatenbank.GegnerListe (Reihenfolge (PrüfenInnen)).GeschwindigkeitGegner and PrüfenAußen < PrüfenInnen then
                  IDZwischenspeicher1 := Reihenfolge (PrüfenAußen);
                  IDZwischenspeicher2 := Reihenfolge (PrüfenInnen);
                  Reihenfolge (PrüfenAußen) := IDZwischenspeicher2;
                  Reihenfolge (PrüfenInnen) := IDZwischenspeicher1;
               else
                  null;
               end if;
               
            end loop ReihenfolgePrüfenInnenSchleife;
         end loop ReihenfolgePrüfenAußenSchleife;

         Put_Line ("Sie stehen folgenden Gegnern gegenüber:");
         VorhandeneGegnerSchleife:
         for VorhandeneGegner in Gegner'Range loop
            MöglicheGegnerSchleife:
            for MöglicheGegner in Gegnerdatenbank.GegnerListe'Range loop
               GegnerPlatz := 1;
               if Gegner (VorhandeneGegner) = Gegnerdatenbank.GegnerListe (MöglicheGegner).ID and Gegnerdatenbank.GegnerListe (MöglicheGegner).ID /= 0 then
                  Put_Line (Integer'Wide_Image (GegnerPlatz) & "." & To_Wide_String (Gegnerdatenbank.GegnerListe (MöglicheGegner).Name));
                  GegnerPlatz := GegnerPlatz + 1;
                  exit MöglicheGegnerSchleife;
               else
                  null;
               end if;
            
            end loop MöglicheGegnerSchleife;
         end loop VorhandeneGegnerSchleife;

         Put_Line ("Was möchten sie tun?");
         KampfBefehle.KampfBefehle;

         Wert := ImKampf.ImKampf;

         case Wert is

            when -1 | 0 | 2 =>
               return Wert;

            when 3 =>
               Nicht.Nicht;

            when 4 =>
               null;--Info;

            when 10 =>
               WelcherGegner;

               case WenAngreifen is

               when 1 .. 5 =>
                  KampfBerechnung;

               when others =>
                  null;
                  
               end case;
               
            when 11 =>
               Verteidigt := True;
               KampfBerechnung;

            when 12 .. 13 =>
               KampfBerechnung;
               
               case Flucht is
                     
                  when -1 =>
                     Put_Line ("Ihr Fluchtversuch scheitert.");
                  
                  when 1 =>
                     Put_Line ("Sie fliehen erfolgreich");
                     return -1_000_000;

                  when others =>
                     null;
               end case;
                                    
            when others =>
               null;

         end case;
         
      end loop KampfSchleife;

      Put_Line ("Sollte niemals aufgerufen werden, Kampfsystem.Kampfschleife nach Schleife.");
      return 0;

   end Kampf;



   procedure WelcherGegner is
   begin
      
      Put_Line ("Geben sie den Namen oder die Platznummer des Gegners ein:");
      Text := EinWort.EinWort;

      WelcherGegnerNameSchleife:
      for A in Gegner'Range loop
         if Text = Gegnerdatenbank.GegnerListe (Gegner (A)).Name then
            WenAngreifen := A;
            return;
         else
            null;
         end if;
      end loop WelcherGegnerNameSchleife;

      Wert := WortZuGanzeZahl.WortZuGanzeZahl (Text);
      WenAngreifenGegnerPlatz := 0;

      case Wert is
         when 1 .. 5 =>
            WelcherGegnerNummerSchleife:
            for A in Gegner'Range loop
               if Gegner (A) /= 0 then
                  WenAngreifenGegnerPlatz := WenAngreifenGegnerPlatz + 1;
                  if WenAngreifenGegnerPlatz = Wert then
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

      Put_Line ("Das ist kein vorhandener Gegner.");
      
   end WelcherGegner;



   procedure KampfBerechnung is
   begin
      
      case Verteidigt is
         when True =>
            null;
            
         when False =>
            null;
      end case;
      
   end KampfBerechnung;
   
   
   
   procedure Angreifen is
   begin
      
      return;
      
   end Angreifen;
   
   
   
   procedure Verteidigen is
   begin
      
      return;
      
   end Verteidigen;



   procedure Gegenstand is
   begin
      
      return;
      
   end Gegenstand;
   
   
   
   function Fliehen return Integer is
   begin
      
      return 20;
      
   end Fliehen;



   procedure GegnerBesiegtPrüfung is
   begin
      
      GegnerPrüfenSchleife:
      for GegnerPrüfen in Gegner'Range loop
         if Gegner (GegnerPrüfen) = 0 then
            GegnerBesiegt := True;
         else
            GegnerBesiegt := False;
            exit GegnerPrüfenSchleife;
         end if;
      end loop GegnerPrüfenSchleife;
      
   end GegnerBesiegtPrüfung;
     
     
     
   procedure SpielerBesiegtPrüfung is
   begin
      
      null;
      
   end SpielerBesiegtPrüfung;
                            
end Kampfsystem;
