with Schlafsaal;
with Verbindungsgang;
with VomSpielerWeggeworfen;

package body LokalerHubStuetzpunkt is

   function VerteilungLokalStützpunkt
     return Integer
   is begin

      Läuft := True;

      VerteilungLokalStützpunktSchleife:
      while Läuft loop

         VomSpielerWeggeworfen.Ort := OrteAuswahlLokal;

         -- 100 .. 199
         case
           OrteAuswahlLokal
         is
            when -1 | 0 | 2 =>
               return OrteAuswahlLokal;

            when 100 =>
               OrteAuswahlLokal := Schlafsaal.Schlafsaal;

            when 101 =>
               OrteAuswahlLokal := Verbindungsgang.Gang;

            when 102 =>
               OrteAuswahlLokal := 0;

            when others =>
               raise Program_Error;
         end case;

      end loop VerteilungLokalStützpunktSchleife;

      raise Program_Error;

   end VerteilungLokalStützpunkt;

end LokalerHubStuetzpunkt;
