package body SpezielleEigenschaftenAendern is

   function SpezielleEigenschaftenÄndern (Wert : in Integer) return Integer is
   begin

      CharakterÄnderung := EinWort.EinWort;

      if CharakterÄnderung = "scharfschütze" then
         SpezielleEigenschaften.SpezielleEigenschaften (1);
         return 5;
      elsif CharakterÄnderung = "träger" then
         SpezielleEigenschaften.SpezielleEigenschaften (2);
         return 5;
      elsif CharakterÄnderung = "glückspilz" then
         SpezielleEigenschaften.SpezielleEigenschaften (3);
         return 5;
      elsif CharakterÄnderung = "schnell" then
         SpezielleEigenschaften.SpezielleEigenschaften (4);
         return 5;
      elsif CharakterÄnderung = "langlebig" then
         SpezielleEigenschaften.SpezielleEigenschaften (5);
         return 5;
      elsif CharakterÄnderung = "werfer" then
         SpezielleEigenschaften.SpezielleEigenschaften (6);
         return 5;
      elsif CharakterÄnderung = "boxer" then
         SpezielleEigenschaften.SpezielleEigenschaften (7);
         return 5;
      elsif CharakterÄnderung = "unauffällig" then
         SpezielleEigenschaften.SpezielleEigenschaften (8);
         return 5;
      elsif CharakterÄnderung = "charismatisch" then
         SpezielleEigenschaften.SpezielleEigenschaften (9);
         return 5;
      elsif CharakterÄnderung = "sprenger" then
         SpezielleEigenschaften.SpezielleEigenschaften (10);
         return 5;
      elsif CharakterÄnderung = "techniker" then
         SpezielleEigenschaften.SpezielleEigenschaften (11);
         return 5;
      elsif CharakterÄnderung = "scharfschütze+" or CharakterÄnderung = "scharfschütze +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 1);
         return 5;
      elsif CharakterÄnderung = "träger+" or CharakterÄnderung = "träger +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 2);
         return 5;
      elsif CharakterÄnderung = "glückspilz+" or CharakterÄnderung = "glückspilz +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 3);
         return 5;
      elsif CharakterÄnderung = "schnell+" or CharakterÄnderung = "schnell +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 4);
         return 5;
      elsif CharakterÄnderung = "langlebig+" or CharakterÄnderung = "langlebig +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 5);
         return 5;
      elsif CharakterÄnderung = "werfer+" or CharakterÄnderung = "werfer +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 6);
         return 5;
      elsif CharakterÄnderung = "boxer+" or CharakterÄnderung = "boxer +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 7);
         return 5;
      elsif CharakterÄnderung = "unauffällig+" or CharakterÄnderung = "unauffällig +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 8);
         return 5;
      elsif CharakterÄnderung = "charismatisch+" or CharakterÄnderung = "charismatisch +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 9);
         return 5;
      elsif CharakterÄnderung = "sprenger+" or CharakterÄnderung = "sprenger +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 10);
         return 5;
      elsif CharakterÄnderung = "techniker+" or CharakterÄnderung = "techniker +" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (True, 11);
         return 5;
      elsif CharakterÄnderung = "scharfschütze-" or CharakterÄnderung = "scharfschütze -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 1);
         return 5;
      elsif CharakterÄnderung = "träger-" or CharakterÄnderung = "träger -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 2);
         return 5;
      elsif CharakterÄnderung = "glückspilz-" or CharakterÄnderung = "glückspilz -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 3);
         return 5;
      elsif CharakterÄnderung = "schnell-" or CharakterÄnderung = "schnell -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 4);
         return 5;
      elsif CharakterÄnderung = "langlebig-" or CharakterÄnderung = "langlebig -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 5);
         return 5;
      elsif CharakterÄnderung = "werfer-" or CharakterÄnderung = "werfer -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 6);
         return 5;
      elsif CharakterÄnderung = "boxer-" or CharakterÄnderung = "boxer -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 7);
         return 5;
      elsif CharakterÄnderung = "unauffällig-" or CharakterÄnderung = "unauffällig -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 8);
         return 5;
      elsif CharakterÄnderung = "charismatisch-" or CharakterÄnderung = "charismatisch -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 9);
         return 5;
      elsif CharakterÄnderung = "sprenger-" or CharakterÄnderung = "sprenger -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 10);
         return 5;
      elsif CharakterÄnderung = "techniker-" or CharakterÄnderung = "techniker -" then
         SpezielleEigenschaftenVerteilung.SpezielleEigenschaftenVerteilung (False, 11);
         return 5;
      elsif CharakterÄnderung = "fertig" then
         return 6;
      elsif CharakterÄnderung = "beenden" or CharakterÄnderung = "ende" then
         return -1;
      elsif CharakterÄnderung = "lade" or CharakterÄnderung = "laden" then
         return 2;
      elsif CharakterÄnderung = "speichern" or CharakterÄnderung = "speichere" or CharakterÄnderung = "speicher" then
         return 3;
      elsif CharakterÄnderung = "information" or CharakterÄnderung = "informationen" or CharakterÄnderung = "infos" or CharakterÄnderung = "info" then
         return 4;
      elsif CharakterÄnderung = "hauptmenü" then
         return 0;
      elsif CharakterÄnderung = "äöüß#" then
         Charaktere.Hauptcharakter.SpezielleEigenschaften := (others => True);
         return 6;
      else
         Falsch.Falsch;
         return -10;
      end if;

   end SpezielleEigenschaftenÄndern;

end SpezielleEigenschaftenAendern;
