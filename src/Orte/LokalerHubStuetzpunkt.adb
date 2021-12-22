package body LokalerHubStuetzpunkt is

   function VerteilungLokalStützpunkt return Integer is
   begin

      Läuft := True;

      VerteilungLokalStützpunktSchleife:
      while Läuft = True loop

         VomSpielerWeggeworfen.Ort := OrteAuswahlLokal;

         case OrteAuswahlLokal is -- 100 .. 199

            when -1 | 0 | 2 =>
               return OrteAuswahlLokal;

            when 100 =>
               OrteAuswahlLokal := Schlafsaal.Schlafsaal;

            when 101 =>
               OrteAuswahlLokal := Verbindungsgang.Gang;

            when 102 =>
               OrteAuswahlLokal := 0;

            when others =>
               Put_Line ("Sollte niemals aufgerufen werden LokalerHubStützpunkt in Schleife.");

         end case;

      end loop VerteilungLokalStützpunktSchleife;

      Put_Line ("Sollte niemals aufgerufen werden LokalerHubStützpunkt nach Schleife.");
      return 0;

   end VerteilungLokalStützpunkt;

end LokalerHubStuetzpunkt;
