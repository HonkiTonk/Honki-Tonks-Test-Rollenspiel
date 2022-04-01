pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

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

      Name : Unbounded_Wide_Wide_String;

   end record;

   type GegnerListeArray is array (0 .. 5) of Gegner;
   GegnerListe : GegnerListeArray := (
                                      0 => (0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, To_Unbounded_Wide_Wide_String (Source => "Nichts")),
                                      1 => (1, 10, 10, 2, 2, 2, 0, 1.25, 0.10, To_Unbounded_Wide_Wide_String (Source => "Einfacher Testgegner")),
                                      2 => (2, 20, 20, 4, 4, 4, 1, 1.50, 0.25, To_Unbounded_Wide_Wide_String (Source => "Normaler Testgegner")),
                                      3 => (3, 40, 40, 8, 8, 8, 2, 2.00, 0.50, To_Unbounded_Wide_Wide_String (Source => "Schwerer Testgegner")),
                                      4 => (4, 10, 10, 2, 2, 2, 0, 1.25, 0.10, To_Unbounded_Wide_Wide_String (Source => "Hund")),
                                      5 => (5, 10, 10, 2, 2, 2, 0, 1.25, 0.10, To_Unbounded_Wide_Wide_String (Source => "Soldat"))
                                     );

end Gegnerdatenbank;
