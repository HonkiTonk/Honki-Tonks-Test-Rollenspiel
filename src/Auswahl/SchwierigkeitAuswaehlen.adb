with EinWort;
with Falsch;
with Laden;
with GlobaleVariablen;

package body SchwierigkeitAuswaehlen is

   function SchwierigkeitAuswählen
     return Integer
   is begin

      Text := EinWort.EinWort;

      if
        Text = "leicht"
      then
         GlobaleVariablen.Schwierigkeitsgrad := 1;
         return 10;

      elsif
        Text = "mittel"
      then
         GlobaleVariablen.Schwierigkeitsgrad := 2;
         return 10;

      elsif
        Text = "schwer"
      then
         GlobaleVariablen.Schwierigkeitsgrad := 3;
         return 10;

      elsif
        Text = "beenden"
        or
          Text = "ende"
      then
         return -1;

      elsif
        Text = "hauptmenü"
      then
         return 0;

      elsif
        Text = "lade"
        or
          Text = "laden"
      then
         LadenBoolean := Laden.Laden (False);
         case
           LadenBoolean
         is
            when True =>
               return 2;

            when False =>
               return -10;
         end case;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end SchwierigkeitAuswählen;

end SchwierigkeitAuswaehlen;
