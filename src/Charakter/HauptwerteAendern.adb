pragma Warnings (Off, "*array aggregate*");

with Charaktere;
with EinWort;
with Hauptwerte;
with HauptwerteVerteilung;

package body HauptwerteAendern is

   function HauptwerteÄndern
     (WertExtern : in Integer)
      return Integer
   is begin

      Erhöhen := True;
      CharakterÄnderung := EinWort.EinWort;

      if
        CharakterÄnderung = "stärke"
      then
         Hauptwerte.Hauptwerte (WertExtern => 1);
         return 5;

      elsif
        CharakterÄnderung = "wahrnehmung"
      then
         Hauptwerte.Hauptwerte (WertExtern => 2);
         return 5;

      elsif
        CharakterÄnderung = "ausdauer"
      then
         Hauptwerte.Hauptwerte (WertExtern => 3);
         return 5;

      elsif
        CharakterÄnderung = "charisma"
      then
         Hauptwerte.Hauptwerte (WertExtern => 4);
         return 5;

      elsif
        CharakterÄnderung = "intelligenz"
      then
         Hauptwerte.Hauptwerte (WertExtern => 5);
         return 5;

      elsif
        CharakterÄnderung = "beweglichkeit"
      then
         Hauptwerte.Hauptwerte (WertExtern => 6);
         return 5;

      elsif
        CharakterÄnderung = "glück"
      then
         Hauptwerte.Hauptwerte (WertExtern => 7);
         return 5;

      elsif
        CharakterÄnderung = "stärke+"
        or
          CharakterÄnderung = "stärke +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 1);
         return 5;

      elsif
        CharakterÄnderung = "wahrnehmung+"
        or
          CharakterÄnderung = "wahrnehmung +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 2);
         return 5;

      elsif
        CharakterÄnderung = "ausdauer+"
        or
          CharakterÄnderung = "ausdauer +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 3);
         return 5;

      elsif
        CharakterÄnderung = "charisma+"
        or
          CharakterÄnderung = "charisma +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 4);
         return 5;

      elsif
        CharakterÄnderung = "intelligenz+"
        or
          CharakterÄnderung = "intelligenz +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 5);
         return 5;

      elsif
        CharakterÄnderung = "beweglichkeit+"
        or
          CharakterÄnderung = "beweglichkeit +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 6);
         return 5;

      elsif
        CharakterÄnderung = "glück+"
        or
          CharakterÄnderung = "glück +"
      then
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => True,
                                                    WertExtern    => 7);
         return 5;

      elsif
        (CharakterÄnderung = "stärke-"
         or
           CharakterÄnderung = "stärke -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 1);
         return 5;

      elsif
        (CharakterÄnderung = "wahrnehmung-"
         or
           CharakterÄnderung = "wahrnehmung -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 2);
         return 5;

      elsif
        (CharakterÄnderung = "ausdauer-"
         or
           CharakterÄnderung = "ausdauer -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 3);
         return 5;

      elsif
        (CharakterÄnderung = "charisma-"
         or
           CharakterÄnderung = "charisma -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 4);
         return 5;

      elsif
        (CharakterÄnderung = "intelligenz-"
         or
           CharakterÄnderung = "intelligenz -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 5);
         return 5;

      elsif
        (CharakterÄnderung = "beweglichkeit-"
         or
           CharakterÄnderung = "beweglichkeit -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 6);
         return 5;

      elsif
        (CharakterÄnderung = "glück-"
         or
           CharakterÄnderung = "glück -")
        and
          WertExtern = 1
      then
         Erhöhen := False;
         HauptwerteVerteilung.HauptwerteVerteilung (ErhöhenExtern => False,
                                                    WertExtern    => 7);
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
         Charaktere.Hauptcharakter.Hauptwerte := (others => 10);
         return 6;

      else
         return -10;
      end if;

   end HauptwerteÄndern;

end HauptwerteAendern;
