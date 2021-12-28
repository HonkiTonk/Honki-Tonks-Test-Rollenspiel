with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package StandardBefehle is

   procedure StandardBefehle;
   
private
   
   type StandardBefehleNamenArray is array (1 .. 18) of Unbounded_Wide_String;
   StandardBefehleNamen : StandardBefehleNamenArray := (To_Unbounded_Wide_String ("Beenden"), To_Unbounded_Wide_String ("Hauptmenü"), To_Unbounded_Wide_String ("Laden"),
                                                        To_Unbounded_Wide_String ("Speichern"), To_Unbounded_Wide_String ("Informationen"), To_Unbounded_Wide_String ("Befehle"), To_Unbounded_Wide_String ("Nimm"),
                                                        To_Unbounded_Wide_String ("Anschauen"), To_Unbounded_Wide_String ("Benutzen"), To_Unbounded_Wide_String ("Sprechen"),
                                                        To_Unbounded_Wide_String ("Öffnen"), To_Unbounded_Wide_String ("Schließen"), To_Unbounded_Wide_String ("Gehe"),
                                                        To_Unbounded_Wide_String ("Schlafen"), To_Unbounded_Wide_String ("Warte"), To_Unbounded_Wide_String ("Charakter"),
                                                        To_Unbounded_Wide_String ("Aufstieg"), To_Unbounded_Wide_String ("Quest"));
   
end StandardBefehle;
