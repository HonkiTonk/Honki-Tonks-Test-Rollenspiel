with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Gegnerdatenbank is

   type Gegner is record

      ID : Integer;
      GesamteLebenspunkteGegner : Integer;
      AktuelleLebenspunkteGegner : Integer;
      GeschwindigkeitGegner : Integer;
      AngriffGegner : Integer;
      VerteidigungGegner : Integer;
      Beute : Integer;

      MulitplikatorKritischerTrefferGegner : Float;
      ChanceKritischerTrefferGegner : Float;

      Name : Unbounded_Wide_String;

   end record;

   type GegnerListeArray is array (0 .. 5) of Gegner;
   GegnerListe : GegnerListeArray := ((0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String ("Nichts")),
                                      (1, 10, 10, 2, 2, 2, 0, 1.25, 0.10, Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String ("Einfacher Testgegner")),
                                      (2, 20, 20, 4, 4, 4, 1, 1.50, 0.25, Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String ("Normaler Testgegner")),
                                      (3, 40, 40, 8, 8, 8, 2, 2.00, 0.50, Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String ("Schwerer Testgegner")),
                                      (4, 10, 10, 2, 2, 2, 0, 1.25, 0.10, Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String ("Hund")),
                                      (5, 10, 10, 2, 2, 2, 0, 1.25, 0.10, Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String ("Soldat")));

end Gegnerdatenbank;
