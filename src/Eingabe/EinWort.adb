with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Maps.Wide_Constants;

package body EinWort is

   function EinWort
     return Unbounded_Wide_String
   is begin

      EinWortEingabeString := To_Unbounded_Wide_String (Get_Line);
      Trim (EinWortEingabeString, Ada.Strings.Both);
      Translate (EinWortEingabeString, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map);

      return EinWortEingabeString;

   end EinWort;



   function EinWortOhneÄnderung
     return Unbounded_Wide_String
   is begin

      EinWortEingabeString := To_Unbounded_Wide_String (Get_Line);

      return EinWortEingabeString;

   end EinWortOhneÄnderung;

end EinWort;
