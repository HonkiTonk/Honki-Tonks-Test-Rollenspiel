pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Charaktere is

   type InventarRecord is record

      ID : Integer;
      Menge : Integer;
      Name : Unbounded_Wide_Wide_String;

   end record;

   type QuestRecord is record

      ID : Integer;
      Status : Integer;

   end record;

   -- Immer auf der Größe Questdatenbank.QuestListe setzen
   type QuestArray is array (1 .. 100) of QuestRecord;

   type InventarArray is array (1 .. 30) of InventarRecord;

   type SpezielleEigenschaftenArray is array (1 .. 11) of Boolean;

   type HauptwerteArray is array (1 .. 7) of Integer;
   type FertigkeitenArray is array (1 .. 19) of Integer;
   type SonstigeWerteArray is array (1 .. 7) of Integer;
   type WaffenAusgerüstetArray is array (1 .. 2) of Integer;
   type RüstungsteileAusgerüstetArray is array (1 .. 4) of Integer;
   type ZustandArray is array (1 .. 5) of Integer;

   type GewichtArray is array (1 .. 2) of Float;
   type KampfIntegerArray is array (1 .. 3) of Integer;
   type KampfFloatArray is array (1 .. 2) of Float;

   type HauptwerteNamenArray is array (1 .. 7) of Unbounded_Wide_Wide_String;
   type FerigkeitenNamenArray is array (1 .. 19) of Unbounded_Wide_Wide_String;
   type SpezielleEigenschaftenNamenArray is array (1 .. 11) of Unbounded_Wide_Wide_String;

   HauptwerteNamen : HauptwerteNamenArray := (
                                              1 => To_Unbounded_Wide_Wide_String (Source => "Stärke"),
                                              2 => To_Unbounded_Wide_Wide_String (Source => "Wahrnehmung"),
                                              3 => To_Unbounded_Wide_Wide_String (Source => "Ausdauer"),
                                              4 => To_Unbounded_Wide_Wide_String (Source => "Charisma"),
                                              5 => To_Unbounded_Wide_Wide_String (Source => "Intelligenz"),
                                              6 => To_Unbounded_Wide_Wide_String (Source => "Beweglichkeit"),
                                              7 => To_Unbounded_Wide_Wide_String (Source => "Glück")
                                             );

   FertigkeitenNamen : FerigkeitenNamenArray := (
                                                 1 => To_Unbounded_Wide_Wide_String (Source => "Unbewaffnet"),
                                                 2 => To_Unbounded_Wide_Wide_String (Source => "Nahkampfwaffen"),
                                                 3 => To_Unbounded_Wide_Wide_String (Source => "Pistolen"),
                                                 4 => To_Unbounded_Wide_Wide_String (Source => "Maschinenpistolen"),
                                                 5 => To_Unbounded_Wide_Wide_String (Source => "Scharfschützengewehre"),
                                                 6 => To_Unbounded_Wide_Wide_String (Source => "Sturmgewehre"),
                                                 7 => To_Unbounded_Wide_Wide_String (Source => "Schrottflinten"),
                                                 8 => To_Unbounded_Wide_Wide_String (Source => "Schwere Waffen"),
                                                 9 => To_Unbounded_Wide_Wide_String (Source => "Wurfwaffen"),
                                                 10 => To_Unbounded_Wide_Wide_String (Source => "Sprengsätze"),
                                                 11 => To_Unbounded_Wide_Wide_String (Source => "ErsteHilfe"),
                                                 12 => To_Unbounded_Wide_Wide_String (Source => "Schleichen"),
                                                 13 => To_Unbounded_Wide_Wide_String (Source => "Stehlen"),
                                                 14 => To_Unbounded_Wide_Wide_String (Source => "Schlösser Knacken"),
                                                 15 => To_Unbounded_Wide_Wide_String (Source => "Glücksspiel"),
                                                 16 => To_Unbounded_Wide_Wide_String (Source => "Handeln"),
                                                 17 => To_Unbounded_Wide_Wide_String (Source => "Überreden"),
                                                 18 => To_Unbounded_Wide_Wide_String (Source => "Computer"),
                                                 19 => To_Unbounded_Wide_Wide_String (Source => "Elektronik")
                                                );

   SpezielleEigenschaftenNamen : SpezielleEigenschaftenNamenArray := (
                                                                      1 => To_Unbounded_Wide_Wide_String (Source => "Scharfschütze"),
                                                                      2 => To_Unbounded_Wide_Wide_String (Source => "Träger"),
                                                                      3 => To_Unbounded_Wide_Wide_String (Source => "Glückspilz"),
                                                                      4 => To_Unbounded_Wide_Wide_String (Source => "Schnell"),
                                                                      5 => To_Unbounded_Wide_Wide_String (Source => "Langlebig"),
                                                                      6 => To_Unbounded_Wide_Wide_String (Source => "Werfer"),
                                                                      7 => To_Unbounded_Wide_Wide_String (Source => "Boxer"),
                                                                      8 => To_Unbounded_Wide_Wide_String (Source => "Unauffällig"),
                                                                      9 => To_Unbounded_Wide_Wide_String (Source => "Charismatisch"),
                                                                      10 => To_Unbounded_Wide_Wide_String (Source => "Sprenger"),
                                                                      11 => To_Unbounded_Wide_Wide_String (Source => "Techniker")
                                                                     );

   type Charakter is record

      Name : Unbounded_Wide_Wide_String;
      Geschlecht : Wide_Wide_String (1 .. 4);

      SonstigeWerte : SonstigeWerteArray := (0, 1, 0, 0, 10, 100, 2);
      ModifizierteSonstigeWerte : SonstigeWerteArray;
      -- 1 = Aktuelle Erfahrungspunkte, 2 = Aktueller Level, 3 = Aktuelle Lebenspunkte, 4 = Gesamte Lebenspunkte, 5 = Verteilbare Punkte Hauptwerte, 6 = Verteilbare Punkte Fertigkeiten, 7 = Verteilbare Punkte Speziell

      Gewicht : GewichtArray;
      -- 1 = Tragen Aktuell, 2 = Tragen Maximum

      KampfWerteInteger : KampfIntegerArray;
      ModifizierteKampfWerteInteger : KampfIntegerArray;
      -- 1 = Angriff, 2 = Verteidigung, 3 = Geschwindigkeit

      KampfWerteFloat : KampfFloatArray;
      ModifizierteKampfWerteFloat : KampfFloatArray;
      -- 1 = Chance kritischer Treffer, 2 = Multiplikator kritischer Treffer

      Zustände : ZustandArray := (others => 0);
      -- 1 = Krank, 2 = Unterkühlt, 3 = Gift, 4 = Blutung, 5 = Verbrennung

      Hauptwerte : HauptwerteArray;
      ModifizierteHauptwerte : HauptwerteArray;

      Fertigkeiten : FertigkeitenArray;
      ModifizierteFertigkeiten : FertigkeitenArray;

      SpezielleEigenschaften : SpezielleEigenschaftenArray;

      Geld : Integer;
      Inventar : InventarArray := (others => (0, 0, To_Unbounded_Wide_Wide_String (Source => "")));
      InventarZumSortieren : InventarArray := (others => (0, 0, To_Unbounded_Wide_Wide_String (Source => "")));
      -- 1 = ID des Items, 2 = Menge

      WaffenAusgerüstet : WaffenAusgerüstetArray := (0, 0);
      -- 1 = ID der linken Waffe, 2 = ID der rechten Waffe

      RüstungsteileAusgerüstet : RüstungsteileAusgerüstetArray := (others => 0);
      -- 1 = ID Helm, 2 = ID der Rüstung, 3 = ID der Handschuhe, 4 = ID der Schuhe

      Quests : QuestArray := (others => (0, 0));

   end record;

   Hauptcharakter : Charakter;

end Charaktere;

