with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package StandardAuswahl is

   function StandardAuswahl
     return Integer;
   
private

   Laden : Boolean;
   
   Text : Unbounded_Wide_String;

end StandardAuswahl;
