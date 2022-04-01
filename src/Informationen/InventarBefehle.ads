pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package InventarBefehle is

   procedure InventarBefehle;

private

   type InventarBefehleNamenArray is array (1 .. 23) of Unbounded_Wide_Wide_String;
   InventarBefehleNamen : InventarBefehleNamenArray := (
                                                        1 => To_Unbounded_Wide_Wide_String (Source => "Beenden"),
                                                        2 => To_Unbounded_Wide_Wide_String (Source => "Hauptmenü"),
                                                        3 => To_Unbounded_Wide_Wide_String (Source => "Laden"),
                                                        4 => To_Unbounded_Wide_Wide_String (Source => "Speichern"),
                                                        5 => To_Unbounded_Wide_Wide_String (Source => "Informationen"),
                                                        6 => To_Unbounded_Wide_Wide_String (Source => "Ja"),
                                                        7 => To_Unbounded_Wide_Wide_String (Source => "Nein"),
                                                        8 => To_Unbounded_Wide_Wide_String (Source => "Befehle"),
                                                        9 => To_Unbounded_Wide_Wide_String (Source => "Übersicht"),
                                                        10 => To_Unbounded_Wide_Wide_String (Source => "Sonstiges"),
                                                        11 => To_Unbounded_Wide_Wide_String (Source => "Heilung"),
                                                        12 => To_Unbounded_Wide_Wide_String (Source => "Waffen"),
                                                        13 => To_Unbounded_Wide_Wide_String (Source => "Rüstungen"),
                                                        14 => To_Unbounded_Wide_Wide_String (Source => "Quest"),
                                                        15 => To_Unbounded_Wide_Wide_String (Source => "Kampf"),
                                                        16 => To_Unbounded_Wide_Wide_String (Source => "Helm"),
                                                        17 => To_Unbounded_Wide_Wide_String (Source => "Hand"),
                                                        18 => To_Unbounded_Wide_Wide_String (Source => "Schuh"),
                                                        19 => To_Unbounded_Wide_Wide_String (Source => "Benutzen"),
                                                        20 => To_Unbounded_Wide_Wide_String (Source => "Ausrüsten"),
                                                        21 => To_Unbounded_Wide_Wide_String (Source => "Ablegen"),
                                                        22 => To_Unbounded_Wide_Wide_String (Source => "Wegwerfen"),
                                                        23 => To_Unbounded_Wide_Wide_String (Source => "Schließen")
                                                       );

end InventarBefehle;
