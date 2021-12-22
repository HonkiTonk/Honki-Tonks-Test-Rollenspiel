package body Schlafsaal is

   function Schlafsaal return Integer is
   begin
      Bewegungssystem.Bewegung (1);
      Läuft := True;
      Info;
      Karten.Anzeige;
      SchlafsaalSchleife:
      while Läuft = True loop

         Wert := ImSpiel.ImSpiel;

         case Wert is

            when -1 | 0 | 2 =>
               return Wert;

            when 3 =>
               Nicht.Nicht;

            when 4 =>
               Info;

            when 10 .. 15 =>
               Wert := Auswählen (Wert);
               case Wert is

                  when -1 | 0 | 2 =>
                     return Wert;

                  when 3 =>
                     Nicht.Nicht;

                  when others =>
                     null;

               end case;

            when 16 =>
               Bewegung := Gehen;
               case Bewegung is

                  when -1 | 0 | 2 =>
                     return Bewegung;

                  when 3 =>
                     Nicht.Nicht; -- return 3?

                  when 101 =>
                     return Bewegung;

                  when others =>
                     null;

               end case;

            when others =>
               null;

         end case;

      end loop SchlafsaalSchleife;

      Put_Line ("Sollte niemals aufgerufen werden LokalerHubStützpunkt.Schlafsaal nach Schleife.");
      return 0;

   end Schlafsaal;



   procedure Info is
   begin

      Put_Line ("Sie erwachen alleine im Schlafsaal ihres Stützpunktes.");

      if Zeit.Stunde >= 6 and Zeit.Stunde < 9 then
         Put_Line ("Durch zwei Fenster im Süden scheint die Morgensonne und erhellt den Saal.");
      elsif Zeit.Stunde >= 9 and Zeit.Stunde < 12 then
         Put_Line ("Durch zwei Fenster im Süden scheint die Vormittagssonne und erhellt den Saal.");
      elsif Zeit.Stunde >= 12 and Zeit.Stunde < 13 then
         Put_Line ("Durch zwei Fenster im Süden scheint die Mittagssonne und erhellt den Saal.");
      elsif Zeit.Stunde >= 13 and Zeit.Stunde < 18 then
         Put_Line ("Durch zwei Fenster im Süden scheint die Nachmittagssonne und erhellt den Saal.");
      elsif Zeit.Stunde >= 18 and Zeit.Stunde < 22 then
         Put_Line ("Durch zwei Fenster im Süden scheint die Abendsonne und erhellt den Saal.");
      else
         Put_Line ("Durch zwei Fenster im Süden scheint das Mondlicht.");
      end if;

      case FensterGeöffnet is

         when False =>
            Put_Line ("Die Fenster sind geschlossen.");

         when True =>
            Put_Line ("Die Fenster sind geöffnet.");

      end case;

      Put_Line ("Im Raum befinden sich 20 Betten und Spinde.");

      case SpindGeöffnet is

         when False =>
            Put_Line ("Sie sind alle ungeöffnet.");

         when True =>
            Put_Line ("Ihr Spind ist geöffnet, der Rest geschlossen.");

            case SpindAusgeräumt is

               when False =>
                  Put_Line ("In ihm befinden sich 10 Rationen, 100 Geld, 2 Verbände, ihre PE16 Pistole und 5 Magazine.");

               when True =>
                  Put_Line ("Ihr Spind ist vollständig leer.");

            end case;

      end case;

      case TürGeöffnet is

         when False =>
            Put_Line ("Am nördlichen Ende des Raumes befindet sich die geschlossene Ausgangstür.");

         when True =>
            Put_Line ("Am nördlichen Ende des Raumes befindet sich die offene Ausgangstür.");

      end case;

      Put_Line ("Von draußen kommen leise Geräusche, welche sie nicht näher einordnen können.");
      Put_Line ("Was möchten sie tun?");

      case Start is
         when True =>
            StandardBefehle.StandardBefehle;
              Start := False;

         when False =>
            null;

      end case;
      New_Line;

   end Info;



   function Auswählen (Entscheidungswert : in Integer) return Integer is
   begin

      Put_Line ("Spinde");
      Put_Line ("Betten");
      Put_Line ("Fenster");
      Put_Line ("Tür");

      if SpindGeöffnet = True and SpindAusgeräumt = False then
         Put_Line ("Spindinhalt");
      end if;

      case FensterGeöffnet is

         when True =>
            Put_Line ("Draußen");

         when False =>
            null;

      end case;

      if SpindGeöffnet = True and SpindAusgeräumt = False and FensterGeöffnet = False then
         AusgewähltesObjekt := Objekt.Objekt (100.1);
      elsif SpindGeöffnet = True and SpindAusgeräumt = False then
         AusgewähltesObjekt := Objekt.Objekt (100.2);
      elsif FensterGeöffnet = True then
         AusgewähltesObjekt := Objekt.Objekt (100.3);
      else
         AusgewähltesObjekt := Objekt.Objekt (100.0);
      end if;

      case Entscheidungswert is

         when 10 =>
            Nehmen (AusgewähltesObjekt);

         when 11 =>
            Anschauen (AusgewähltesObjekt);

         when 12 =>
            Benutzen (AusgewähltesObjekt);

         when 13 =>
            Sprechen (AusgewähltesObjekt);

         when 14 =>
            Öffnen (AusgewähltesObjekt);

         when 15 =>
            Schließen (AusgewähltesObjekt);

         when others =>
            null;

      end case;

      return AusgewähltesObjekt;

   end Auswählen;



   procedure Nehmen (Objekt : in Integer) is
   begin

      case Objekt is

         when 10 =>
            Put_Line ("Die Spinde sind zu schwer um sie mitzunehmen.");

         when 11 =>
            Put_Line ("Die Betten sind zu schwer zum tragen.");

         when 12 =>
            Put_Line ("Die Fenster sind fest verankert.");

         when 13 =>
            Put_Line ("Sie sind nicht in der Lage die Tür aus den Angeln zu reißen.");

         when 14 =>
            Put_Line ("Sie nehmen den Inhalt ihres Spindes mit.");
            SpindAusgeräumt := True;

         when 15 =>
            Put_Line ("Das funktioniert leider nicht.");

         when others =>
            null;

      end case;

   end Nehmen;



   procedure Anschauen (Objekt : in Integer) is
   begin

      case Objekt is

         when 10 =>
            Put_Line ("Es sind ganz normale Stahlspinde.");
            case SpindGeöffnet is

               when False =>
                  Put_Line ("Bis auf ihren Spind sind alle fest verschlossen.");

               when True =>
                  Put_Line ("Ihr Spind steht offen, die Restlichen sind fest verschlossen.");

            end case;

         when 11 =>
            Put_Line ("Stahlbetten auf die eine mäßig komfortable Matraze, eine Decke und ein Kissen liegt.");

         when 12 =>
            case FensterGeöffnet is

               when False =>
                  Put_Line ("Kippbare Milchglasfenster die geschlossen sind.");

               when True =>
                  Put_Line ("Kippbare Milchglasfenster die gekippt sind.");
                  Put_Line ("Ein angenehm frischer Windhauch weht herein.");

            end case;

         when 13 =>
            Put_Line ("Es ist eine solide Stahltür.");
            case TürGeöffnet is

               when False =>
                  Put_Line ("Sie ist momentan geschlossen.");

               when True =>
                  Put_Line ("Sie ist aktuell offen.");

            end case;

         when 14 =>
            Put_Line ("Sie sehen 10 Standardmilitärrationen, 100 Geld, 2 normale Verbände.");
            Put_Line ("Außerdem ihre Standard PE16 Pistole und 5 dazugehörige Magazine.");

         when 15 =>
            Put_Line ("Sie können den Zaun um ihren Stützpunkt und den dahinterliegenden Wald sehen.");
            Put_Line ("Außerdem weht ein leichter Windhauch herein.");

         when others =>
            null;

      end case;

   end Anschauen;



   procedure Benutzen (Objekt : in Integer) is
   begin

      case Objekt is

         when 10 =>
            Put_Line ("Womit möchten sie die Spinde benutzen?");

         when 11 =>
            Put_Line ("");

         when 12 =>
            Put_Line ("");

         when 13 =>
            Put_Line ("");

         when 14 =>
            Put_Line ("");

         when 15 =>
            Put_Line ("");

         when others =>
            null;

      end case;

   end Benutzen;



   procedure Sprechen (Objekt : in Integer) is
   begin

      case Objekt is

         when 10 =>
            Put_Line ("Sie sprechen mit den Spinden, diese antworten allerdings nicht.");

         when 11 =>
            Put_Line ("Sie sprechen mit den Betten, diese antworten allerdings nicht.");

         when 12 =>
            Put_Line ("Sie sprechen mit den Fenstern, diese antworten allerdings nicht.");

         when 13 =>
            Put_Line ("Sie sprechen mit der Tür, diese antwortet allerdings nicht.");

         when 14 =>
            Put_Line ("Sie sprechen mit dem Inhalt ihres Spindes, dieser antwortet allerdings nicht.");

         when 15 =>
            Put_Line ("Sie rufen nach draußen, aber es antwortet keiner.");

         when others =>
            null;

      end case;

   end Sprechen;



   procedure Öffnen (Objekt : in Integer) is
   begin

      case Objekt is

         when 10 =>
            case SpindGeöffnet is

               when False =>
                  Put_Line ("Sie versuchen die Spinde zu öffnen, allerdings ist nur ihrer nicht verschlossen.");
                  Put_Line ("Sie öffnen diesen.");
                  SpindGeöffnet := True;

               when True =>
                  Put_line ("Sie versuchen die Spinde zu öffnen, allerdings sind diese alle fest verschlossen.");

            end case;

         when 11 =>
            Put_Line ("Die Betten können nicht geöffnet werden, da sie nicht verschlossen sind.");

         when 12 =>
            case FensterGeöffnet is

               when False =>
                  Put_Line ("Sie kippen die Fenster.");
                  FensterGeöffnet := True;

               when True =>
                  Put_Line ("Die Fenster sind bereits gekippt.");

            end case;


         when 13 =>
            case TürGeöffnet is

               when False =>
                  Put_Line ("Sie öffnen die Ausgangstür.");
                  TürGeöffnet := True;

               when True =>
                  Put_Line ("Die Tür ist bereits offen.");

            end case;

         when 14 =>
            Put_Line ("Das funktioniert leider nicht.");

         when 15 =>
            Put_Line ("Das funktioniert leider nicht.");

         when others =>
            null;

      end case;

   end Öffnen;



   procedure Schließen (Objekt : in Integer) is
   begin

      case Objekt is

         when 10 =>
            case SpindGeöffnet is

               when False =>
                  Put_Line ("Die Spinde sind bereits alle geschlossen.");

               when True =>
                  Put_line ("Sie schließen ihren Spind wieder.");
                  SpindGeöffnet := False;

            end case;

         when 11 =>
            Put_Line ("Die Betten können nicht geschlossen werden, da sie nicht geöffnet sind.");

         when 12 =>
            case FensterGeöffnet is

               when False =>
                  Put_Line ("Die Fenster sind bereits geschlossen.");

               when True =>
                  Put_Line ("Sie schließen die Fenster wieder.");
                  FensterGeöffnet := False;

            end case;


         when 13 =>
            case TürGeöffnet is

               when False =>
                  Put_Line ("Die Tür ist bereits geschlossen.");

               when True =>
                  Put_Line ("Sie schließen die Ausgangstür wieder.");
                  TürGeöffnet := False;

            end case;

         when 14 =>
            Put_Line ("Das funktioniert leider nicht.");

         when 15 =>
            Put_Line ("Das funktioniert leider nicht.");

         when others =>
            null;

      end case;

   end Schließen;



   function Gehen return Integer is
   begin

      Put_Line ("Nach Norden durch die Ausgangstür.");

      Bewegung := Bewegungsrichtung.Bewegungsrichtung;

      case Bewegung is

         when 10 =>
            Put_Line ("Sie öffnen die nördliche Ausgangstür und gehen hindurch.");
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
