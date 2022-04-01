pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package KampfBefehle is

   procedure KampfBefehle;
   
private

   type KampfBefehleNamenArray is array (1 .. 10) of Unbounded_Wide_Wide_String;
   KampfBefehleNamen : KampfBefehleNamenArray := (
                                                  1 => To_Unbounded_Wide_Wide_String (Source => "Beenden"),
                                                  2 => To_Unbounded_Wide_Wide_String (Source => "Hauptmenü"),
                                                  3 => To_Unbounded_Wide_Wide_String (Source => "Laden"),
                                                  4 => To_Unbounded_Wide_Wide_String (Source => "Speichern"),
                                                  5 => To_Unbounded_Wide_Wide_String (Source => "Informationen"),
                                                  6 => To_Unbounded_Wide_Wide_String (Source => "Befehle"),
                                                  7 => To_Unbounded_Wide_Wide_String (Source => "Angriff"),
                                                  8 => To_Unbounded_Wide_Wide_String (Source => "Verteidigung"),
                                                  9 => To_Unbounded_Wide_Wide_String (Source => "Gegenstand"),
                                                  10 => To_Unbounded_Wide_Wide_String (Source => "Flucht")
                                                 );
   
end KampfBefehle;
