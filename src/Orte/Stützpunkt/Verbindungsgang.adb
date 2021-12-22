package body Verbindungsgang is

   function Gang return Integer is
   begin

      Info;

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
               Wert := 0; -- Auswählen (Wert);
               case Wert is

                  when -1 | 0 | 2 =>
                     return Wert;

                  when 3 =>
                     Nicht.Nicht;

                  when others =>
                     null;

               end case;

            when 16 =>
               Bewegung := 0; -- Gehen;
               case Bewegung is

                  when -1 | 0 | 2 =>
                     return Bewegung;

                  when 3 =>
                     Nicht.Nicht; -- return 3?

                  when 101 =>
                     return 101;

                  when others =>
                     null;

               end case;

            when 17 =>
               Wert := GegnerFestlegen.GegnerZufall (101);

            when others =>
               null;

         end case;

      end loop SchlafsaalSchleife;

      Put_Line ("Sollte niemals aufgerufen werden LokalerHubStützpunkt.Schlafsaal nach Schleife.");
      return 0;

   end Gang;



   procedure Info is
   begin

      Put_Line ("Sie befinden sich im Schlafsaal ihres Stützpunktes.");
      Put_Line ("");
      Put_Line ("Was möchten sie tun?");
      New_Line;

   end Info;

end Verbindungsgang;
