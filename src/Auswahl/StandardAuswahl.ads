pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package StandardAuswahl is

   function StandardAuswahl
     return Integer;
   
private

   Laden : Boolean := False;
   
   Text : Unbounded_Wide_Wide_String;

end StandardAuswahl;
