pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Bewegungssystem;
with ImSpiel;
with UnmoeglicheRichtung;
with Zeit;
with Bewegungsrichtung;
with Objekt;
with Nicht;
with StandardBefehle;
with Karten;

package body Schlafsaal is

   function Schlafsaal
     return Integer
   is begin

      Bewegungssystem.Bewegung (RichtungExtern => 1);
      Läuft := True;
      Info;
      Karten.Anzeige;

      SchlafsaalSchleife:
      while Läuft loop

         Wert := ImSpiel.ImSpiel;

         case
           Wert
         is
            when -1 | 0 | 2 =>
               return Wert;

            when 3 =>
               Nicht.Nicht;

            when 4 =>
               Info;

            when 10 .. 15 =>
               Wert := Auswählen (EntscheidungswertExtern => Wert);
               if
                 Wert = -1
                 or
                   Wert = 0
                   or
                     Wert = 2
               then
                  return Wert;

               elsif
                 Wert = 3
               then
                  Nicht.Nicht;

               else
                  null;
               end if;

            when 16 =>
               Bewegung := Gehen;
               if
                 Bewegung = -1
                 or
                   Bewegung = 0
                   or
                     Bewegung = 2
               then
                  return Bewegung;

               elsif
                 Bewegung = 3
               then
                  Nicht.Nicht;
                  -- return 3?

               elsif
                 Bewegung = 101
               then
                  return Bewegung;

               else
                  null;
               end if;

            when others =>
               null;
         end case;

      end loop SchlafsaalSchleife;

      raise Program_Error;

   end Schlafsaal;



   procedure Info
   is begin

      Put_Line (Item => "Sie erwachen alleine im Schlafsaal ihres Stützpunktes.");

      if
        Zeit.Stunde >= 6
        and
          Zeit.Stunde < 9
      then
         Put_Line (Item => "Durch zwei Fenster im Süden scheint die Morgensonne und erhellt den Saal.");

      elsif
        Zeit.Stunde >= 9
        and
          Zeit.Stunde < 12
      then
         Put_Line (Item => "Durch zwei Fenster im Süden scheint die Vormittagssonne und erhellt den Saal.");

      elsif
        Zeit.Stunde >= 12
        and
          Zeit.Stunde < 13
      then
         Put_Line (Item => "Durch zwei Fenster im Süden scheint die Mittagssonne und erhellt den Saal.");

      elsif
        Zeit.Stunde >= 13
        and
          Zeit.Stunde < 18
      then
         Put_Line (Item => "Durch zwei Fenster im Süden scheint die Nachmittagssonne und erhellt den Saal.");

      elsif
        Zeit.Stunde >= 18
        and
          Zeit.Stunde < 22
      then
         Put_Line (Item => "Durch zwei Fenster im Süden scheint die Abendsonne und erhellt den Saal.");

      else
         Put_Line (Item => "Durch zwei Fenster im Süden scheint das Mondlicht.");
      end if;

      case
        FensterGeöffnet
      is
         when False =>
            Put_Line (Item => "Die Fenster sind geschlossen.");

         when True =>
            Put_Line (Item => "Die Fenster sind geöffnet.");
      end case;

      Put_Line (Item => "Im Raum befinden sich 20 Betten und Spinde.");

      case
        SpindGeöffnet
      is
         when False =>
            Put_Line (Item => "Sie sind alle ungeöffnet.");

         when True =>
            Put_Line (Item => "Ihr Spind ist geöffnet, der Rest geschlossen.");

            case
              SpindAusgeräumt
            is
               when False =>
                  Put_Line (Item => "In ihm befinden sich 10 Rationen, 100 Geld, 2 Verbände, ihre PE16 Pistole und 5 Magazine.");

               when True =>
                  Put_Line (Item => "Ihr Spind ist vollständig leer.");
            end case;
      end case;

      case
        TürGeöffnet
      is
         when False =>
            Put_Line (Item => "Am nördlichen Ende des Raumes befindet sich die geschlossene Ausgangstür.");

         when True =>
            Put_Line (Item => "Am nördlichen Ende des Raumes befindet sich die offene Ausgangstür.");
      end case;

      Put_Line (Item => "Von draußen kommen leise Geräusche, welche sie nicht näher einordnen können.");
      Put_Line (Item => "Was möchten sie tun?");

      case
        Start
      is
         when True =>
            StandardBefehle.StandardBefehle;
            Start := False;

         when False =>
            null;
      end case;

      New_Line;

   end Info;



   function Auswählen
     (EntscheidungswertExtern : in Integer)
      return Integer
   is begin

      Put_Line (Item => "Spinde");
      Put_Line (Item => "Betten");
      Put_Line (Item => "Fenster");
      Put_Line (Item => "Tür");

      if
        SpindGeöffnet
        and
          SpindAusgeräumt
      then
         Put_Line (Item => "Spindinhalt");

      else
         null;
      end if;

      case
        FensterGeöffnet
      is
         when True =>
            Put_Line (Item => "Draußen");

         when False =>
            null;
      end case;

      if
        SpindGeöffnet
        and
          SpindAusgeräumt = False
          and
            FensterGeöffnet = False
      then
         AusgewähltesObjektExtern := Objekt.Objekt (AktuellerOrtExtern => 100.1);

      elsif
        SpindGeöffnet
        and
          (SpindAusgeräumt = False)
      then
         AusgewähltesObjektExtern := Objekt.Objekt (AktuellerOrtExtern => 100.2);

      elsif
        FensterGeöffnet
      then
         AusgewähltesObjektExtern := Objekt.Objekt (AktuellerOrtExtern => 100.3);

      else
         AusgewähltesObjektExtern := Objekt.Objekt (AktuellerOrtExtern => 100.0);
      end if;

      case
        EntscheidungswertExtern
      is
         when 10 =>
            Nehmen (ObjektExtern => AusgewähltesObjektExtern);

         when 11 =>
            Anschauen (ObjektExtern => AusgewähltesObjektExtern);

         when 12 =>
            Benutzen (ObjektExtern => AusgewähltesObjektExtern);

         when 13 =>
            Sprechen (ObjektExtern => AusgewähltesObjektExtern);

         when 14 =>
            Öffnen (ObjektExtern => AusgewähltesObjektExtern);

         when 15 =>
            Schließen (ObjektExtern => AusgewähltesObjektExtern);

         when others =>
            null;
      end case;

      return AusgewähltesObjektExtern;

   end Auswählen;



   procedure Nehmen
     (ObjektExtern : in Integer)
   is begin

      case
        ObjektExtern
      is
         when 10 =>
            Put_Line (Item => "Die Spinde sind zu schwer um sie mitzunehmen.");

         when 11 =>
            Put_Line (Item => "Die Betten sind zu schwer zum tragen.");

         when 12 =>
            Put_Line (Item => "Die Fenster sind fest verankert.");

         when 13 =>
            Put_Line (Item => "Sie sind nicht in der Lage die Tür aus den Angeln zu reißen.");

         when 14 =>
            Put_Line (Item => "Sie nehmen den Inhalt ihres Spindes mit.");
            SpindAusgeräumt := True;

         when 15 =>
            Put_Line (Item => "Das funktioniert leider nicht.");

         when others =>
            null;
      end case;

   end Nehmen;



   procedure Anschauen
     (ObjektExtern : in Integer)
   is begin

      case
        ObjektExtern
      is
         when 10 =>
            Put_Line (Item => "Es sind ganz normale Stahlspinde.");
            case
              SpindGeöffnet
            is
               when False =>
                  Put_Line (Item => "Bis auf ihren Spind sind alle fest verschlossen.");

               when True =>
                  Put_Line (Item => "Ihr Spind steht offen, die Restlichen sind fest verschlossen.");
            end case;

         when 11 =>
            Put_Line (Item => "Stahlbetten auf die eine mäßig komfortable Matraze, eine Decke und ein Kissen liegt.");

         when 12 =>
            case
              FensterGeöffnet
            is
               when False =>
                  Put_Line (Item => "Kippbare Milchglasfenster die geschlossen sind.");

               when True =>
                  Put_Line (Item => "Kippbare Milchglasfenster die gekippt sind.");
                  Put_Line (Item => "Ein angenehm frischer Windhauch weht herein.");
            end case;

         when 13 =>
            Put_Line (Item => "Es ist eine solide Stahltür.");
            case
              TürGeöffnet
            is
               when False =>
                  Put_Line (Item => "Sie ist momentan geschlossen.");

               when True =>
                  Put_Line (Item => "Sie ist aktuell offen.");
            end case;

         when 14 =>
            Put_Line (Item => "Sie sehen 10 Standardmilitärrationen, 100 Geld, 2 normale Verbände.");
            Put_Line (Item => "Außerdem ihre Standard PE16 Pistole und 5 dazugehörige Magazine.");

         when 15 =>
            Put_Line (Item => "Sie können den Zaun um ihren Stützpunkt und den dahinterliegenden Wald sehen.");
            Put_Line (Item => "Außerdem weht ein leichter Windhauch herein.");

         when others =>
            null;
      end case;

   end Anschauen;



   procedure Benutzen
     (ObjektExtern : in Integer)
   is begin

      case
        ObjektExtern
      is
         when 10 =>
            Put_Line (Item => "Womit möchten sie die Spinde benutzen?");

         when 11 =>
            New_Line;

         when 12 =>
            New_Line;

         when 13 =>
            New_Line;

         when 14 =>
            New_Line;

         when 15 =>
            New_Line;

         when others =>
            null;
      end case;

   end Benutzen;



   procedure Sprechen
     (ObjektExtern : in Integer)
   is begin

      case
        ObjektExtern
      is
         when 10 =>
            Put_Line (Item => "Sie sprechen mit den Spinden, diese antworten allerdings nicht.");

         when 11 =>
            Put_Line (Item => "Sie sprechen mit den Betten, diese antworten allerdings nicht.");

         when 12 =>
            Put_Line (Item => "Sie sprechen mit den Fenstern, diese antworten allerdings nicht.");

         when 13 =>
            Put_Line (Item => "Sie sprechen mit der Tür, diese antwortet allerdings nicht.");

         when 14 =>
            Put_Line (Item => "Sie sprechen mit dem Inhalt ihres Spindes, dieser antwortet allerdings nicht.");

         when 15 =>
            Put_Line (Item => "Sie rufen nach draußen, aber es antwortet keiner.");

         when others =>
            null;
      end case;

   end Sprechen;



   procedure Öffnen
     (ObjektExtern : in Integer)
   is begin

      case
        ObjektExtern
      is
         when 10 =>
            case
              SpindGeöffnet
            is
               when False =>
                  Put_Line (Item => "Sie versuchen die Spinde zu öffnen, allerdings ist nur ihrer nicht verschlossen.");
                  Put_Line (Item => "Sie öffnen diesen.");
                  SpindGeöffnet := True;

               when True =>
                  Put_Line (Item => "Sie versuchen die Spinde zu öffnen, allerdings sind diese alle fest verschlossen.");
            end case;

         when 11 =>
            Put_Line (Item => "Die Betten können nicht geöffnet werden, da sie nicht verschlossen sind.");

         when 12 =>
            case
              FensterGeöffnet
            is
               when False =>
                  Put_Line (Item => "Sie kippen die Fenster.");
                  FensterGeöffnet := True;

               when True =>
                  Put_Line (Item => "Die Fenster sind bereits gekippt.");
            end case;

         when 13 =>
            case
              TürGeöffnet
            is
               when False =>
                  Put_Line (Item => "Sie öffnen die Ausgangstür.");
                  TürGeöffnet := True;

               when True =>
                  Put_Line (Item => "Die Tür ist bereits offen.");
            end case;

         when 14 =>
            Put_Line (Item => "Das funktioniert leider nicht.");

         when 15 =>
            Put_Line (Item => "Das funktioniert leider nicht.");

         when others =>
            null;
      end case;

   end Öffnen;



   procedure Schließen
     (ObjektExtern : in Integer)
   is begin

      case
        ObjektExtern
      is
         when 10 =>
            case
              SpindGeöffnet
            is
               when False =>
                  Put_Line (Item => "Die Spinde sind bereits alle geschlossen.");

               when True =>
                  Put_Line (Item => "Sie schließen ihren Spind wieder.");
                  SpindGeöffnet := False;
            end case;

         when 11 =>
            Put_Line (Item => "Die Betten können nicht geschlossen werden, da sie nicht geöffnet sind.");

         when 12 =>
            case
              FensterGeöffnet
            is
               when False =>
                  Put_Line (Item => "Die Fenster sind bereits geschlossen.");

               when True =>
                  Put_Line (Item => "Sie schließen die Fenster wieder.");
                  FensterGeöffnet := False;
            end case;

         when 13 =>
            case
              TürGeöffnet
            is
               when False =>
                  Put_Line (Item => "Die Tür ist bereits geschlossen.");

               when True =>
                  Put_Line (Item => "Sie schließen die Ausgangstür wieder.");
                  TürGeöffnet := False;
            end case;

         when 14 =>
            Put_Line (Item => "Das funktioniert leider nicht.");

         when 15 =>
            Put_Line (Item => "Das funktioniert leider nicht.");

         when others =>
            null;
      end case;

   end Schließen;



   function Gehen
     return Integer
   is begin

      Put_Line (Item => "Nach Norden durch die Ausgangstür.");

      Bewegung := Bewegungsrichtung.Bewegungsrichtung;

      case
        Bewegung
      is
         when 10 =>
            Put_Line (Item => "Sie öffnen die nördliche Ausgangstür und gehen hindurch.");
            TürGeöffnet := True;
            return 101;

         when 11 .. 17 =>
            UnmoeglicheRichtung.UnmöglicheRichtung;

         when others =>
            null;
      end case;

      return Bewegung;

   end Gehen;

end Schlafsaal;
