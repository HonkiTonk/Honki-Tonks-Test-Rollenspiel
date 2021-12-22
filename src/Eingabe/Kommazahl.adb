package body Kommazahl is

   function Kommazahl return Unbounded_Wide_String is
   begin

      EinWortEingabeString := To_Unbounded_Wide_String (Get_Line);
      Translate (EinWortEingabeString, Ada.Strings.Wide_Maps.Wide_Constants.Lower_Case_Map);
      Trim (EinWortEingabeString, Ada.Strings.Both);

      AnfangsNullenEntfernenSchleife:
      for NullenZählen in To_Wide_String (EinWortEingabeString)'Range loop
         if To_Wide_String (EinWortEingabeString) (NullenZählen) = '0' then
            null;
         else
            Replace_Slice (EinWortEingabeString, 1, NullenZählen - 1, "");
            exit AnfangsNullenEntfernenSchleife;
         end if;
      end loop AnfangsNullenEntfernenSchleife;

      Trim (EinWortEingabeString, Ada.Strings.Both);

      -- Put_Line (To_Wide_String (EinWortEingabeString));

      return EinWortEingabeString;

   end Kommazahl;

end Kommazahl;
