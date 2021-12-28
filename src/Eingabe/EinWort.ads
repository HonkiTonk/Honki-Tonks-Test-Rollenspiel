with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package EinWort is

   function EinWort
     return Unbounded_Wide_String;

   function EinWortOhneÄnderung
     return Unbounded_Wide_String;

private

   EinWortEingabeString : Unbounded_Wide_String;
   EinWortEingabeStringÄnderbar : Unbounded_Wide_String;

end EinWort;
