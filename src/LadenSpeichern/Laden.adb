package body Laden is

   function Laden (Hauptmenü : in Boolean) return Boolean is
   begin
      
      Put_Line ("Welchen Spielstand wollen sie laden?");      
      Put_Line ("Zur Auswahl die Slotnummer oder den Namen eines Speicherstandes eingeben:");
      
      for A in Speichern.SpeicherständeListe'Range loop
         Put_Line (Integer'Wide_Image (A) & ". Slot - Name: " & To_Wide_String (Speichern.SpeicherständeListe (A)));
      end loop;
      
      Name := EinWort.EinWortOhneÄnderung;      
      Slot := WortZuGanzeZahl.WortZuGanzeZahl (Name);
      
      case Slot is
         when Speichern.SpeicherständeListe'Range =>
            if Speichern.SpeicherständeListe (Slot) /= "" and Hauptmenü = False then
               GlobaleVariablen.ZuLadenderSpielstand := Slot;
               return Sicherheitsabfrage (Slot);
            elsif Speichern.SpeicherständeListe (Slot) /= "" and Hauptmenü = True then
               GlobaleVariablen.ZuLadenderSpielstand := Slot;
               return True;
            else
               null;
            end if;
            
         when others =>
            null;
      end case;
      
      LadenNachNamenSchleife:
      for A in Speichern.SpeicherständeListe'Range loop
         if Speichern.SpeicherständeListe (A) = Name and Speichern.SpeicherständeListe (A) /= ""  and Hauptmenü = False then
               GlobaleVariablen.ZuLadenderSpielstand := A;
            return Sicherheitsabfrage (A);
         elsif Speichern.SpeicherständeListe (A) = Name and Hauptmenü = True then
               GlobaleVariablen.ZuLadenderSpielstand := A;
            return True;
         else
            null;
         end if;
      end loop LadenNachNamenSchleife;
      
      Falsch.Falsch;
      GlobaleVariablen.ZuLadenderSpielstand := -10;
      return False;

   end Laden;
   

   
   function Sicherheitsabfrage (Slotnummer : in Integer) return Boolean is
   begin
      
      Put_Line ("Wollen sie diesen Spielstand " & To_Wide_String (Speichern.SpeicherständeListe (Slotnummer)) & " wirklich laden?");
      Put_Line ("Jeder nicht gespeicherter Fortschritt geht dabei verloren.");
      
      return JaNein.JaNeinEinfach;
      
   end Sicherheitsabfrage;
   
   
   
   procedure Lädt is
   begin   

      Open (File => Datei,
            Mode => In_File,
            Name => "Test.Speicherdatei");

      Set_Line (Datei, To => 1);

      for Index in AuswahlArray'Range loop
         Read_A_Single_Block1:
         loop

            exit when Index = AuswahlArray'Last and End_Of_Line (Datei);

            Get (File => Datei,
                 Item => Buffer);

            exit Read_A_Single_Block1 when Buffer = ' ';

            Append (Source => AuswahlArray (1, Index),
                    New_Item => Buffer);

         end loop Read_A_Single_Block1;

      end loop;

      Set_Line (Datei, To => 2);

      for Index in AuswahlArray'Range loop
         Read_A_Single_Block2:
         loop

            exit when Index = AuswahlArray'Last and End_Of_Line (Datei);

            Get (File => Datei,
                 Item => Buffer);

            exit Read_A_Single_Block2 when Buffer = ' ';

            Append (Source => AuswahlArray (2, Index),
                    New_Item => Buffer);

         end loop Read_A_Single_Block2;

      end loop;

      Set_Line (Datei, To => 3);

      for Index in AuswahlArray'Range loop
         Read_A_Single_Block3:
         loop

            exit when Index = AuswahlArray'Last and End_Of_Line (Datei);

            Get (File => Datei,
                 Item => Buffer);

            exit Read_A_Single_Block3 when Buffer = ' ';

            Append (Source => AuswahlArray (3, Index),
                    New_Item => Buffer);

         end loop Read_A_Single_Block3;

      end loop;

      Close (Datei);
      
   end Lädt;
   
end Laden;
