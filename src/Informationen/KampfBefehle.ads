with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package KampfBefehle is

   type KampfBefehleNamenArray is array (1 .. 10) of Unbounded_Wide_String;
   KampfBefehleNamen : KampfBefehleNamenArray := (To_Unbounded_Wide_String ("Beenden"), To_Unbounded_Wide_String ("Hauptmenü"), To_Unbounded_Wide_String ("Laden"),
                                                  To_Unbounded_Wide_String ("Speichern"), To_Unbounded_Wide_String ("Informationen"), To_Unbounded_Wide_String ("Befehle"),
                                                  To_Unbounded_Wide_String ("Angriff"), To_Unbounded_Wide_String ("Verteidigung"), To_Unbounded_Wide_String ("Gegenstand"),
                                                  To_Unbounded_Wide_String ("Flucht"));

   procedure KampfBefehle;
   
end KampfBefehle;