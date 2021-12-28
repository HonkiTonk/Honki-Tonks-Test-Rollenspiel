with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package InventarInfo is

   procedure Verteilung;

private

   GegenstandAuswahl : Unbounded_Wide_String;

   procedure SonstigesInventar;
   procedure HeilInventar;
   procedure WaffenInventar;
   procedure RüstungsInventar;
   procedure QuestInventar;

end InventarInfo;
