with Charaktere;
with EinWort;
with Fertigkeiten;
with FertigkeitenVerteilung;

package body FertigkeitenAendern is

   function FertigkeitenÄndern
     (Wert : in Integer)
      return Integer
   is begin

      CharakterÄnderung := EinWort.EinWort;

      if
        CharakterÄnderung = "unbewaffnet"
      then
         Fertigkeiten.Fertigkeiten (1);
         return 5;

      elsif
        CharakterÄnderung = "nahkampfwaffen"
      then
         Fertigkeiten.Fertigkeiten (2);
         return 5;

      elsif
        CharakterÄnderung = "pistolen"
      then
         Fertigkeiten.Fertigkeiten (3);
         return 5;

      elsif
        CharakterÄnderung = "maschinenpistolen"
      then
         Fertigkeiten.Fertigkeiten (4);
         return 5;

      elsif
        CharakterÄnderung = "scharfschützengewehre"
      then
         Fertigkeiten.Fertigkeiten (5);
         return 5;

      elsif
        CharakterÄnderung = "sturmgewehre"
      then
         Fertigkeiten.Fertigkeiten (6);
         return 5;

      elsif
        CharakterÄnderung = "schrottflinten"
      then
         Fertigkeiten.Fertigkeiten (7);
         return 5;

      elsif
        CharakterÄnderung = "schwere waffen"
        or
          CharakterÄnderung = "schwerewaffen"
      then
         Fertigkeiten.Fertigkeiten (8);
         return 5;

      elsif
        CharakterÄnderung = "wurfwaffen"
      then
         Fertigkeiten.Fertigkeiten (9);
         return 5;

      elsif
        CharakterÄnderung = "sprengsätze"
      then
         Fertigkeiten.Fertigkeiten (10);
         return 5;

      elsif
        CharakterÄnderung = "erste hilfe"
        or
          CharakterÄnderung = "erstehilfe"
      then
         Fertigkeiten.Fertigkeiten (11);
         return 5;

      elsif
        CharakterÄnderung = "schleichen"
      then
         Fertigkeiten.Fertigkeiten (12);
         return 5;

      elsif
        CharakterÄnderung = "stehlen"
      then
         Fertigkeiten.Fertigkeiten (13);
         return 5;

      elsif
        CharakterÄnderung = "schlösser knacken"
        or
          CharakterÄnderung = "schlösserknacken"
      then
         Fertigkeiten.Fertigkeiten (14);
         return 5;

      elsif
        CharakterÄnderung = "glücksspiel"
      then
         Fertigkeiten.Fertigkeiten (15);
         return 5;

      elsif
        CharakterÄnderung = "handeln"
      then
         Fertigkeiten.Fertigkeiten (16);
         return 5;

      elsif
        CharakterÄnderung = "überreden"
      then
         Fertigkeiten.Fertigkeiten (17);
         return 5;

      elsif
        CharakterÄnderung = "computer"
      then
         Fertigkeiten.Fertigkeiten (18);
         return 5;

      elsif
        CharakterÄnderung = "elektronik"
      then
         Fertigkeiten.Fertigkeiten (19);
         return 5;

      elsif
        CharakterÄnderung = "unbewaffnet+"
        or
          CharakterÄnderung = "unbewaffnet +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 1);
         return 5;

      elsif
        CharakterÄnderung = "nahkampfwaffen+"
        or
          CharakterÄnderung = "nahkampfwaffen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 2);
         return 5;

      elsif
        CharakterÄnderung = "pistolen+"
        or
          CharakterÄnderung = "pistolen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 3);
         return 5;

      elsif
        CharakterÄnderung = "maschinenpistolen+"
        or
          CharakterÄnderung = "maschinenpistolen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 4);
         return 5;

      elsif
        CharakterÄnderung = "scharfschützengewehre+"
        or
          CharakterÄnderung = "scharfschützengewehre +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 5);
         return 5;

      elsif
        CharakterÄnderung = "sturmgewehre+"
        or
          CharakterÄnderung = "sturmgewehre +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 6);
         return 5;

      elsif
        CharakterÄnderung = "schrottflinten+"
        or
          CharakterÄnderung = "schrottflinten +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 7);
         return 5;

      elsif
        CharakterÄnderung = "schwere waffen+"
        or
          CharakterÄnderung = "schwerewaffen+"
          or
            CharakterÄnderung = "schwere waffen +"
            or
              CharakterÄnderung = "schwerewaffen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 8);
         return 5;

      elsif
        CharakterÄnderung = "wurfwaffen+"
        or
          CharakterÄnderung = "wurfwaffen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 9);
         return 5;

      elsif
        CharakterÄnderung = "sprengsätze+"
        or
          CharakterÄnderung = "sprengsätze +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 10);
         return 5;

      elsif
        CharakterÄnderung = "erste hilfe+"
        or
          CharakterÄnderung = "erstehilfe+"
          or
            CharakterÄnderung = "erste hilfe +"
            or
              CharakterÄnderung = "erstehilfe +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 11);
         return 5;

      elsif
        CharakterÄnderung = "schleichen+"
        or
          CharakterÄnderung = "schleichen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 12);
         return 5;

      elsif
        CharakterÄnderung = "stehlen+"
        or
          CharakterÄnderung = "stehlen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 13);
         return 5;

      elsif
        CharakterÄnderung = "schlösser knacken+"
        or
          CharakterÄnderung = "schlösserknacken+"
          or
            CharakterÄnderung = "schlösser knacken +"
            or
              CharakterÄnderung = "schlösserknacken +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 14);
         return 5;

      elsif
        CharakterÄnderung = "glücksspiel+"
        or
          CharakterÄnderung = "glücksspiel +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 15);
         return 5;

      elsif
        CharakterÄnderung = "handeln+"
        or
          CharakterÄnderung = "handeln +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 16);
         return 5;

      elsif
        CharakterÄnderung = "überreden+"
        or
          CharakterÄnderung = "überreden +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 17);
         return 5;

      elsif
        CharakterÄnderung = "computer+"
        or
          CharakterÄnderung = "computer +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 18);
         return 5;

      elsif
        CharakterÄnderung = "elektronik+"
        or
          CharakterÄnderung = "elektronik +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (True, 19);
         return 5;

      elsif
        (CharakterÄnderung = "unbewaffnet-"
         or
           CharakterÄnderung = "unbewaffnet -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 1);
         return 5;

      elsif
        (CharakterÄnderung = "nahkampfwaffen-"
         or
           CharakterÄnderung = "nahkampfwaffen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 2);
         return 5;

      elsif
        (CharakterÄnderung = "pistolen-"
         or
           CharakterÄnderung = "pistolen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 3);
         return 5;

      elsif
        (CharakterÄnderung = "maschinenpistolen-"
         or
           CharakterÄnderung = "maschinenpistolen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 4);
         return 5;

      elsif
        (CharakterÄnderung = "scharfschützengewehre-"
         or
           CharakterÄnderung = "scharfschützengewehre -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 5);
         return 5;

      elsif
        (CharakterÄnderung = "sturmgewehre-"
         or
           CharakterÄnderung = "sturmgewehre -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 6);
         return 5;

      elsif
        (CharakterÄnderung = "schrottflinten-"
         or
           CharakterÄnderung = "schrottflinten -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 7);
         return 5;

      elsif
        (CharakterÄnderung = "schwere waffen-"
         or
           CharakterÄnderung = "schwerewaffen-"
         or
           CharakterÄnderung = "schwere waffen -"
         or
           CharakterÄnderung = "schwerewaffen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 8);
         return 5;

      elsif
        (CharakterÄnderung = "wurfwaffen-"
         or
           CharakterÄnderung = "wurfwaffen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 9);
         return 5;

      elsif
        (CharakterÄnderung = "sprengsätze-"
         or
           CharakterÄnderung = "sprengsätze -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 10);
         return 5;

      elsif
        (CharakterÄnderung = "erste hilfe-"
         or
           CharakterÄnderung = "erstehilfe-"
         or
           CharakterÄnderung = "erste hilfe -"
         or
           CharakterÄnderung = "erstehilfe -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 11);
         return 5;

      elsif
        (CharakterÄnderung = "schleichen-"
         or
           CharakterÄnderung = "schleichen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 12);
         return 5;

      elsif
        (CharakterÄnderung = "stehlen-"
         or
           CharakterÄnderung = "stehlen -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 13);
         return 5;

      elsif
        (CharakterÄnderung = "schlösser knacken-"
         or
           CharakterÄnderung = "schlösserknacken-"
         or
           CharakterÄnderung = "schlösser knacken -"
         or
           CharakterÄnderung = "schlösserknacken -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 14);
         return 5;

      elsif
        (CharakterÄnderung = "glücksspiel-"
         or
           CharakterÄnderung = "glücksspiel -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 15);
         return 5;

      elsif
        (CharakterÄnderung = "handeln-"
         or
           CharakterÄnderung = "handeln -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 16);
         return 5;

      elsif
        (CharakterÄnderung = "überreden-"
         or
           CharakterÄnderung = "überreden -")
        and
          Wert = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 17);
         return 5;

      elsif
        CharakterÄnderung = "computer-"
        or
          CharakterÄnderung = "computer -"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 18);
         return 5;

      elsif
        CharakterÄnderung = "elektronik-"
        or
          CharakterÄnderung = "elektronik -"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (False, 19);
         return 5;

      elsif
        CharakterÄnderung = "fertig"
      then
         return 6;

      elsif
        CharakterÄnderung = "beenden"
        or
          CharakterÄnderung = "ende"
      then
         return -1;

      elsif
        CharakterÄnderung = "lade"
        or
          CharakterÄnderung = "laden"
      then
         return 2;

      elsif
        CharakterÄnderung = "speichern"
        or
          CharakterÄnderung = "speichere"
          or
            CharakterÄnderung = "speicher"
      then
         return 3;

      elsif
        CharakterÄnderung = "information"
        or
          CharakterÄnderung = "informationen"
          or
            CharakterÄnderung = "infos"
            or
              CharakterÄnderung = "info"
      then
         return 4;

      elsif
        CharakterÄnderung = "hauptmenü"
      then
         return 0;

      elsif
        CharakterÄnderung = "äöüß#"
      then
         Charaktere.Hauptcharakter.Fertigkeiten := (others => 100);
         return 6;

      else
         return -10;
      end if;

   end FertigkeitenÄndern;

end FertigkeitenAendern;
