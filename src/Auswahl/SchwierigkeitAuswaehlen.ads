with Ada.Strings.Wide_Unbounded, EinWort, Falsch, Laden, GlobaleVariablen;
use Ada.Strings.Wide_Unbounded;

package SchwierigkeitAuswaehlen is

   Text : Unbounded_Wide_String;

   LadenBoolean : Boolean;

   function SchwierigkeitAuswählen return Integer;

end SchwierigkeitAuswaehlen;
