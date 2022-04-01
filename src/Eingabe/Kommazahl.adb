pragma Warnings (Off, "*array aggregate*");

package body Kommazahl is

   function Kommazahl
     return Unbounded_Wide_Wide_String
   is begin

      EinWortEingabeString := To_Unbounded_Wide_Wide_String (Source => Get_Line);
      Translate (EinWortEingabeString, Ada.Strings.Wide_Wide_Maps.Wide_Wide_Constants.Lower_Case_Map);
      Trim (EinWortEingabeString, Ada.Strings.Both);

      AnfangsNullenEntfernenSchleife:
      for NullenZählenSchleifenwert in To_Wide_Wide_String (Source => EinWortEingabeString)'Range loop

         if
           To_Wide_Wide_String (Source => EinWortEingabeString) (NullenZählenSchleifenwert) = '0'
         then
            null;

         else
            Replace_Slice (EinWortEingabeString, 1, NullenZählenSchleifenwert - 1, "");
            exit AnfangsNullenEntfernenSchleife;
         end if;

      end loop AnfangsNullenEntfernenSchleife;

      Trim (EinWortEingabeString, Ada.Strings.Both);

      -- Put_Line (Item => To_Wide_Wide_String (Source => EinWortEingabeString));

      return EinWortEingabeString;

   end Kommazahl;

end Kommazahl;
