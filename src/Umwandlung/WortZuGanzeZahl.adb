pragma Warnings (Off, "*array aggregate*");

package body WortZuGanzeZahl is

   function WortZuGanzeZahl
     (EinWortEingabeStringExtern : in Unbounded_Wide_Wide_String)
      return Integer
   is begin

      EinWortEingabeStringÄnderbar := EinWortEingabeStringExtern;

      KommaPrüfenSchleife:
      for StellenZählenSchleifenwert in To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar)'Range loop

         if
           To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (StellenZählenSchleifenwert) /= ','
         then
            null;

         else
            Replace_Slice (EinWortEingabeStringÄnderbar, StellenZählenSchleifenwert, To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar)'Last, "");
            exit KommaPrüfenSchleife;
         end if;

      end loop KommaPrüfenSchleife;

      AnfangsNullenEntfernenSchleife:
      for NullenZählenSchleifenwert in To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar)'Range loop

         if
           To_Wide_Wide_String (Source => EinWortEingabeStringExtern) (NullenZählenSchleifenwert) = '0'
         then
            null;

         else
            Replace_Slice (EinWortEingabeStringÄnderbar, 1, NullenZählenSchleifenwert - 1, "");
            exit AnfangsNullenEntfernenSchleife;
         end if;

      end loop AnfangsNullenEntfernenSchleife;

      Trim (EinWortEingabeStringÄnderbar, Ada.Strings.Both);

      PrüfungsSchleife:
      for PrüfungSchleifenwert in To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar)'Range loop

         if
           To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '1'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '2'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '3'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '4'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '5'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '6'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '7'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '8'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '9'
           or
             To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar) (PrüfungSchleifenwert) = '0'
         then
            Prüfung := True;

         else
            return 0;
         end if;

      end loop PrüfungsSchleife;

      case
        Prüfung
      is
         when True =>
            return Integer'Wide_Wide_Value (To_Wide_Wide_String (Source => EinWortEingabeStringÄnderbar));

         when False =>
            return 0;
      end case;

   end WortZuGanzeZahl;

end WortZuGanzeZahl;
