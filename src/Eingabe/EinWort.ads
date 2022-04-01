pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package EinWort is

   function EinWort
     return Unbounded_Wide_Wide_String;

   function EinWortOhneÄnderung
     return Unbounded_Wide_Wide_String;

private

   EinWortEingabeString : Unbounded_Wide_Wide_String;
   EinWortEingabeStringÄnderbar : Unbounded_Wide_Wide_String;

end EinWort;
