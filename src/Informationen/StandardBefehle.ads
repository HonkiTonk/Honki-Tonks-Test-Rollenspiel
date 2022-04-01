pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package StandardBefehle is

   procedure StandardBefehle;
   
private
   
   type StandardBefehleNamenArray is array (1 .. 18) of Unbounded_Wide_Wide_String;
   StandardBefehleNamen : StandardBefehleNamenArray := (
                                                        1 => To_Unbounded_Wide_Wide_String (Source => "Beenden"),
                                                        2 => To_Unbounded_Wide_Wide_String (Source => "Hauptmenü"),
                                                        3 => To_Unbounded_Wide_Wide_String (Source => "Laden"),
                                                        4 => To_Unbounded_Wide_Wide_String (Source => "Speichern"),
                                                        5 => To_Unbounded_Wide_Wide_String (Source => "Informationen"),
                                                        6 => To_Unbounded_Wide_Wide_String (Source => "Befehle"),
                                                        7 => To_Unbounded_Wide_Wide_String (Source => "Nimm"),
                                                        8 => To_Unbounded_Wide_Wide_String (Source => "Anschauen"),
                                                        9 => To_Unbounded_Wide_Wide_String (Source => "Benutzen"),
                                                        10 => To_Unbounded_Wide_Wide_String (Source => "Sprechen"),
                                                        11 => To_Unbounded_Wide_Wide_String (Source => "Öffnen"),
                                                        12 => To_Unbounded_Wide_Wide_String (Source => "Schließen"),
                                                        13 => To_Unbounded_Wide_Wide_String (Source => "Gehe"),
                                                        14 => To_Unbounded_Wide_Wide_String (Source => "Schlafen"),
                                                        15 => To_Unbounded_Wide_Wide_String (Source => "Warte"),
                                                        16 => To_Unbounded_Wide_Wide_String (Source => "Charakter"),
                                                        17 => To_Unbounded_Wide_Wide_String (Source => "Aufstieg"),
                                                        18 => To_Unbounded_Wide_Wide_String (Source => "Quest")
                                                       );
   
end StandardBefehle;
