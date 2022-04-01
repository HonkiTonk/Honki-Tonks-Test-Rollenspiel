pragma Warnings (Off, "*array aggregate*");

with Charaktere;
with EinWort;
with Falsch;
with SpezielleEigenschaften;
with SpezielleEigenschaftenVerteilung;

package body SpezielleEigenschaftenAendern is

   function SpezielleEigenschaftenÄndern
     return Integer
   is begin

      CharakterÄnderung := EinWort.EinWort;

      if
        CharakterÄnderung = "scharfschütze"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 1);
         return 5;

      elsif
        CharakterÄnderung = "träger"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 2);
         return 5;

      elsif
        CharakterÄnderung = "glückspilz"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 3);
         return 5;

      elsif
        CharakterÄnderung = "schnell"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 4);
         return 5;

      elsif
        CharakterÄnderung = "langlebig"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 5);
         return 5;

      elsif
        CharakterÄnderung = "werfer"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 6);
         return 5;

      elsif
        CharakterÄnderung = "boxer"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 7);
         return 5;

      elsif
        CharakterÄnderung = "unauffällig"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 8);
         return 5;

      elsif
        CharakterÄnderung = "charismatisch"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 9);
         return 5;

      elsif
        CharakterÄnderung = "sprenger"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 10);
         return 5;

      elsif
        CharakterÄnderung = "techniker"
      then
         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 11);
         return 5;

      elsif
        CharakterÄnderung = "scharfschütze+"
        or
          CharakterÄnderung = "scharfschütze +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 1);
         return 5;

      elsif
        CharakterÄnderung = "träger+"
        or
          CharakterÄnderung = "träger +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 2);
         return 5;

      elsif
        CharakterÄnderung = "glückspilz+"
        or
          CharakterÄnderung = "glückspilz +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 3);
         return 5;

      elsif
        CharakterÄnderung = "schnell+"
        or
          CharakterÄnderung = "schnell +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 4);
         return 5;

      elsif
        CharakterÄnderung = "langlebig+"
        or
          CharakterÄnderung = "langlebig +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 5);
         return 5;

      elsif
        CharakterÄnderung = "werfer+"
        or
          CharakterÄnderung = "werfer +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 6);
         return 5;

      elsif
        CharakterÄnderung = "boxer+"
        or
          CharakterÄnderung = "boxer +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 7);
         return 5;

      elsif
        CharakterÄnderung = "unauffällig+"
        or
          CharakterÄnderung = "unauffällig +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 8);
         return 5;

      elsif
        CharakterÄnderung = "charismatisch+"
        or
          CharakterÄnderung = "charismatisch +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 9);
         return 5;

      elsif
        CharakterÄnderung = "sprenger+"
        or
          CharakterÄnderung = "sprenger +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 10);
         return 5;

      elsif
        CharakterÄnderung = "techniker+"
        or
          CharakterÄnderung = "techniker +"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => True,
                                                                            WertExtern    => 11);
         return 5;

      elsif
        CharakterÄnderung = "scharfschütze-"
        or
          CharakterÄnderung = "scharfschütze -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 1);
         return 5;

      elsif
        CharakterÄnderung = "träger-"
        or
          CharakterÄnderung = "träger -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 2);
         return 5;

      elsif
        CharakterÄnderung = "glückspilz-"
        or
          CharakterÄnderung = "glückspilz -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 3);
         return 5;

      elsif
        CharakterÄnderung = "schnell-"
        or
          CharakterÄnderung = "schnell -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 4);
         return 5;

      elsif
        CharakterÄnderung = "langlebig-"
        or
          CharakterÄnderung = "langlebig -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 5);
         return 5;

      elsif
        CharakterÄnderung = "werfer-"
        or
          CharakterÄnderung = "werfer -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 6);
         return 5;

      elsif
        CharakterÄnderung = "boxer-"
        or
          CharakterÄnderung = "boxer -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 7);
         return 5;

      elsif
        CharakterÄnderung = "unauffällig-"
        or
          CharakterÄnderung = "unauffällig -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 8);
         return 5;

      elsif
        CharakterÄnderung = "charismatisch-"
        or
          CharakterÄnderung = "charismatisch -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 9);
         return 5;

      elsif
        CharakterÄnderung = "sprenger-"
        or
          CharakterÄnderung = "sprenger -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 10);
         return 5;

      elsif
        CharakterÄnderung = "techniker-"
        or
          CharakterÄnderung = "techniker -"
      then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (ErhöhenExtern => False,
                                                                            WertExtern    => 11);
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
         Charaktere.Hauptcharakter.SpezielleEigenschaften := (others => True);
         return 6;

      else
         Falsch.Falsch;
         return -10;
      end if;

   end SpezielleEigenschaftenÄndern;

end SpezielleEigenschaftenAendern;
