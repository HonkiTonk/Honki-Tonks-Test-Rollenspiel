with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Charaktere is

   type InventarRecord is record

      ID : Integer;
      Menge : Integer;
      Name : Unbounded_Wide_String;

   end record;

   type QuestRecord is record

      ID : Integer;
      Status : Integer;

   end record;

   type QuestArray is array (1 .. 100) of QuestRecord; -- Immer auf der Größe Questdatenbank.QuestListe setzen

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

   type HauptwerteNamenArray is array (1 .. 7) of Unbounded_Wide_String;
   type FerigkeitenNamenArray is array (1 .. 19) of Unbounded_Wide_String;
   type SpezielleEigenschaftenNamenArray is array (1 .. 11) of Unbounded_Wide_String;

   HauptwerteNamen : HauptwerteNamenArray := (To_Unbounded_Wide_String ("Stärke"), To_Unbounded_Wide_String ("Wahrnehmung"), To_Unbounded_Wide_String ("Ausdauer"),
                                              To_Unbounded_Wide_String ("Charisma"), To_Unbounded_Wide_String ("Intelligenz"), To_Unbounded_Wide_String ("Beweglichkeit"),
                                              To_Unbounded_Wide_String ("Glück"));

   FertigkeitenNamen : FerigkeitenNamenArray := (To_Unbounded_Wide_String ("Unbewaffnet"), To_Unbounded_Wide_String ("Nahkampfwaffen"), To_Unbounded_Wide_String ("Pistolen"),
                                                 To_Unbounded_Wide_String ("Maschinenpistolen"), To_Unbounded_Wide_String ("Scharfschützengewehre"), To_Unbounded_Wide_String ("Sturmgewehre"),
                                                 To_Unbounded_Wide_String ("Schrottflinten"), To_Unbounded_Wide_String ("Schwere Waffen"), To_Unbounded_Wide_String ("Wurfwaffen"),
                                                 To_Unbounded_Wide_String ("Sprengsätze"), To_Unbounded_Wide_String ("ErsteHilfe"), To_Unbounded_Wide_String ("Schleichen"),
                                                 To_Unbounded_Wide_String ("Stehlen"), To_Unbounded_Wide_String ("Schlösser Knacken"), To_Unbounded_Wide_String ("Glücksspiel"),
                                                 To_Unbounded_Wide_String ("Handeln"), To_Unbounded_Wide_String ("Überreden"), To_Unbounded_Wide_String ("Computer"), To_Unbounded_Wide_String ("Elektronik"));

   SpezielleEigenschaftenNamen : SpezielleEigenschaftenNamenArray := (To_Unbounded_Wide_String ("Scharfschütze"), To_Unbounded_Wide_String ("Träger"), To_Unbounded_Wide_String ("Glückspilz"),
                                                                      To_Unbounded_Wide_String ("Schnell"), To_Unbounded_Wide_String ("Langlebig"), To_Unbounded_Wide_String ("Werfer"),
                                                                      To_Unbounded_Wide_String ("Boxer"), To_Unbounded_Wide_String ("Unauffällig"), To_Unbounded_Wide_String ("Charismatisch"),
                                                                      To_Unbounded_Wide_String ("Sprenger"), To_Unbounded_Wide_String ("Techniker"));

   type Charakter is record

      Name : Unbounded_Wide_String;
      Geschlecht : Wide_String (1 .. 4);

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
      Inventar : InventarArray := (others => (0, 0, To_Unbounded_Wide_String ("")));
      InventarZumSortieren : InventarArray := (others => (0, 0, To_Unbounded_Wide_String ("")));
      -- 1 = ID des Items, 2 = Menge

      WaffenAusgerüstet : WaffenAusgerüstetArray := (0, 0);
      -- 1 = ID der linken Waffe, 2 = ID der rechten Waffe

      RüstungsteileAusgerüstet : RüstungsteileAusgerüstetArray := (others => 0);
      -- 1 = ID Helm, 2 = ID der Rüstung, 3 = ID der Handschuhe, 4 = ID der Schuhe

      Quests : QuestArray := (others => (0, 0));

   end record;

   Hauptcharakter : Charakter;

end Charaktere;

