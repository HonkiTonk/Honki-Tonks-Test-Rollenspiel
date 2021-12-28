with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package SchwierigkeitAuswaehlen is

   function SchwierigkeitAuswählen
     return Integer;

private

   Text : Unbounded_Wide_String;

   LadenBoolean : Boolean;

end SchwierigkeitAuswaehlen;
