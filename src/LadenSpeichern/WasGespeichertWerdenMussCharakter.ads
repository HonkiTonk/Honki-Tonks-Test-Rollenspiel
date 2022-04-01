pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package WasGespeichertWerdenMussCharakter is
   
   -- Charakter
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

   
   
   -- Charakter
        -- Werte   
        -- Inventar
   
   -- Koordinaten
   
   -- Globale Variablen   
   
   -- Globaler Hub
        -- LokalerHubStützpunkt
             -- Schlafsaal
             -- Verbindungsgang

        -- LokalerHubMehr


end WasGespeichertWerdenMussCharakter;
