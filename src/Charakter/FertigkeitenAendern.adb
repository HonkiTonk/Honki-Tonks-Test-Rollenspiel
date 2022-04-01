pragma Warnings (Off, "*array aggregate*");

with Charaktere;
with EinWort;
with Fertigkeiten;
with FertigkeitenVerteilung;

package body FertigkeitenAendern is

   function FertigkeitenÄndern
     (WertExtern : in Integer)
      return Integer
   is begin

      CharakterÄnderung := EinWort.EinWort;

      if
        CharakterÄnderung = "unbewaffnet"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 1);
         return 5;

      elsif
        CharakterÄnderung = "nahkampfwaffen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 2);
         return 5;

      elsif
        CharakterÄnderung = "pistolen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 3);
         return 5;

      elsif
        CharakterÄnderung = "maschinenpistolen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 4);
         return 5;

      elsif
        CharakterÄnderung = "scharfschützengewehre"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 5);
         return 5;

      elsif
        CharakterÄnderung = "sturmgewehre"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 6);
         return 5;

      elsif
        CharakterÄnderung = "schrottflinten"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 7);
         return 5;

      elsif
        CharakterÄnderung = "schwere waffen"
        or
          CharakterÄnderung = "schwerewaffen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 8);
         return 5;

      elsif
        CharakterÄnderung = "wurfwaffen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 9);
         return 5;

      elsif
        CharakterÄnderung = "sprengsätze"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 10);
         return 5;

      elsif
        CharakterÄnderung = "erste hilfe"
        or
          CharakterÄnderung = "erstehilfe"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 11);
         return 5;

      elsif
        CharakterÄnderung = "schleichen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 12);
         return 5;

      elsif
        CharakterÄnderung = "stehlen"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 13);
         return 5;

      elsif
        CharakterÄnderung = "schlösser knacken"
        or
          CharakterÄnderung = "schlösserknacken"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 14);
         return 5;

      elsif
        CharakterÄnderung = "glücksspiel"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 15);
         return 5;

      elsif
        CharakterÄnderung = "handeln"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 16);
         return 5;

      elsif
        CharakterÄnderung = "überreden"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 17);
         return 5;

      elsif
        CharakterÄnderung = "computer"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 18);
         return 5;

      elsif
        CharakterÄnderung = "elektronik"
      then
         Fertigkeiten.Fertigkeiten (WertExtern => 19);
         return 5;

      elsif
        CharakterÄnderung = "unbewaffnet+"
        or
          CharakterÄnderung = "unbewaffnet +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 1);
         return 5;

      elsif
        CharakterÄnderung = "nahkampfwaffen+"
        or
          CharakterÄnderung = "nahkampfwaffen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 2);
         return 5;

      elsif
        CharakterÄnderung = "pistolen+"
        or
          CharakterÄnderung = "pistolen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 3);
         return 5;

      elsif
        CharakterÄnderung = "maschinenpistolen+"
        or
          CharakterÄnderung = "maschinenpistolen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 4);
         return 5;

      elsif
        CharakterÄnderung = "scharfschützengewehre+"
        or
          CharakterÄnderung = "scharfschützengewehre +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 5);
         return 5;

      elsif
        CharakterÄnderung = "sturmgewehre+"
        or
          CharakterÄnderung = "sturmgewehre +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 6);
         return 5;

      elsif
        CharakterÄnderung = "schrottflinten+"
        or
          CharakterÄnderung = "schrottflinten +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 7);
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
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 8);
         return 5;

      elsif
        CharakterÄnderung = "wurfwaffen+"
        or
          CharakterÄnderung = "wurfwaffen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 9);
         return 5;

      elsif
        CharakterÄnderung = "sprengsätze+"
        or
          CharakterÄnderung = "sprengsätze +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 10);
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
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 11);
         return 5;

      elsif
        CharakterÄnderung = "schleichen+"
        or
          CharakterÄnderung = "schleichen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 12);
         return 5;

      elsif
        CharakterÄnderung = "stehlen+"
        or
          CharakterÄnderung = "stehlen +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 13);
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
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 14);
         return 5;

      elsif
        CharakterÄnderung = "glücksspiel+"
        or
          CharakterÄnderung = "glücksspiel +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 15);
         return 5;

      elsif
        CharakterÄnderung = "handeln+"
        or
          CharakterÄnderung = "handeln +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 16);
         return 5;

      elsif
        CharakterÄnderung = "überreden+"
        or
          CharakterÄnderung = "überreden +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 17);
         return 5;

      elsif
        CharakterÄnderung = "computer+"
        or
          CharakterÄnderung = "computer +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 18);
         return 5;

      elsif
        CharakterÄnderung = "elektronik+"
        or
          CharakterÄnderung = "elektronik +"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => True,
                                                        WertExtern    => 19);
         return 5;

      elsif
        (CharakterÄnderung = "unbewaffnet-"
         or
           CharakterÄnderung = "unbewaffnet -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 1);
         return 5;

      elsif
        (CharakterÄnderung = "nahkampfwaffen-"
         or
           CharakterÄnderung = "nahkampfwaffen -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 2);
         return 5;

      elsif
        (CharakterÄnderung = "pistolen-"
         or
           CharakterÄnderung = "pistolen -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 3);
         return 5;

      elsif
        (CharakterÄnderung = "maschinenpistolen-"
         or
           CharakterÄnderung = "maschinenpistolen -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 4);
         return 5;

      elsif
        (CharakterÄnderung = "scharfschützengewehre-"
         or
           CharakterÄnderung = "scharfschützengewehre -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 5);
         return 5;

      elsif
        (CharakterÄnderung = "sturmgewehre-"
         or
           CharakterÄnderung = "sturmgewehre -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 6);
         return 5;

      elsif
        (CharakterÄnderung = "schrottflinten-"
         or
           CharakterÄnderung = "schrottflinten -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 7);
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
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 8);
         return 5;

      elsif
        (CharakterÄnderung = "wurfwaffen-"
         or
           CharakterÄnderung = "wurfwaffen -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 9);
         return 5;

      elsif
        (CharakterÄnderung = "sprengsätze-"
         or
           CharakterÄnderung = "sprengsätze -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 10);
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
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 11);
         return 5;

      elsif
        (CharakterÄnderung = "schleichen-"
         or
           CharakterÄnderung = "schleichen -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 12);
         return 5;

      elsif
        (CharakterÄnderung = "stehlen-"
         or
           CharakterÄnderung = "stehlen -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 13);
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
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 14);
         return 5;

      elsif
        (CharakterÄnderung = "glücksspiel-"
         or
           CharakterÄnderung = "glücksspiel -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 15);
         return 5;

      elsif
        (CharakterÄnderung = "handeln-"
         or
           CharakterÄnderung = "handeln -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 16);
         return 5;

      elsif
        (CharakterÄnderung = "überreden-"
         or
           CharakterÄnderung = "überreden -")
        and
          WertExtern = 1
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 17);
         return 5;

      elsif
        CharakterÄnderung = "computer-"
        or
          CharakterÄnderung = "computer -"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 18);
         return 5;

      elsif
        CharakterÄnderung = "elektronik-"
        or
          CharakterÄnderung = "elektronik -"
      then
         FertigkeitenVerteilung.FertigkeitenVerteilung (ErhöhenExtern => False,
                                                        WertExtern    => 19);
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
