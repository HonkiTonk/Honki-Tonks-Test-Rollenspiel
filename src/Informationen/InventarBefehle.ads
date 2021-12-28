with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package InventarBefehle is

   procedure InventarBefehle;

private

   type InventarBefehleNamenArray is array (1 .. 23) of Unbounded_Wide_String;
   InventarBefehleNamen : InventarBefehleNamenArray := (To_Unbounded_Wide_String ("Beenden"), To_Unbounded_Wide_String ("Hauptmenü"), To_Unbounded_Wide_String ("Laden"),
                                                        To_Unbounded_Wide_String ("Speichern"), To_Unbounded_Wide_String ("Informationen"), To_Unbounded_Wide_String ("Ja"),
                                                        To_Unbounded_Wide_String ("Nein"), To_Unbounded_Wide_String ("Befehle"), To_Unbounded_Wide_String ("Übersicht"),
                                                        To_Unbounded_Wide_String ("Sonstiges"), To_Unbounded_Wide_String ("Heilung"), To_Unbounded_Wide_String ("Waffen"),
                                                        To_Unbounded_Wide_String ("Rüstungen"), To_Unbounded_Wide_String ("Quest"), To_Unbounded_Wide_String ("Kampf"),
                                                        To_Unbounded_Wide_String ("Helm"), To_Unbounded_Wide_String ("Hand"), To_Unbounded_Wide_String ("Schuh"),
                                                        To_Unbounded_Wide_String ("Benutzen"), To_Unbounded_Wide_String ("Ausrüsten"), To_Unbounded_Wide_String ("Ablegen"),
                                                        To_Unbounded_Wide_String ("Wegwerfen"), To_Unbounded_Wide_String ("Schließen"));

end InventarBefehle;
