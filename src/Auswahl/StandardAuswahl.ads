with Ada.Strings.Wide_Unbounded, Falsch, EinWort;
use Ada.Strings.Wide_Unbounded;

package StandardAuswahl is

   Laden : Boolean;
   
   Text : Unbounded_Wide_String;

   function StandardAuswahl return Integer;

end StandardAuswahl;
