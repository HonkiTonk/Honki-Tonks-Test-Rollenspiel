pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package SchwierigkeitAuswaehlen is

   function SchwierigkeitAuswählen
     return Integer;

private

   Text : Unbounded_Wide_Wide_String;

end SchwierigkeitAuswaehlen;
