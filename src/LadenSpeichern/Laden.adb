pragma Warnings (Off, "*array aggregate*");

with GlobaleVariablen;
with JaNein;
with WortZuGanzeZahl;
with Speichern;
with EinWort;
with Falsch;

package body Laden is

   function Laden
     (HauptmenüExtern : in Boolean)
      return Boolean
   is begin
      
      Put_Line (Item => "Welchen Spielstand wollen sie laden?");      
      Put_Line (Item => "Zur Auswahl die Slotnummer oder den Namen eines Speicherstandes eingeben:");
      
      SpielständeSchleife:
      for SpielständeSchleifenwert in Speichern.SpeicherständeListe'Range loop
         
         Put_Line (Item => Integer'Wide_Wide_Image (SpielständeSchleifenwert) & ". Slot - Name: " & To_Wide_Wide_String (Source => Speichern.SpeicherständeListe (SpielständeSchleifenwert)));
         
      end loop SpielständeSchleife;
      
      Namen := EinWort.EinWortOhneÄnderung;      
      Slot := WortZuGanzeZahl.WortZuGanzeZahl (EinWortEingabeStringExtern => Namen);
      
      case
        Slot
      is
         when Speichern.SpeicherständeListe'Range =>
            if
              Speichern.SpeicherständeListe (Slot) /= ""
              and
                HauptmenüExtern = False
            then
               GlobaleVariablen.ZuLadenderSpielstand := Slot;
               return Sicherheitsabfrage (Slot);
               
            elsif
              Speichern.SpeicherständeListe (Slot) /= ""
              and
                HauptmenüExtern
            then
               GlobaleVariablen.ZuLadenderSpielstand := Slot;
               return True;
               
            else
               null;
            end if;
            
         when others =>
            null;
      end case;
      
      LadenNachNamenSchleife:
      for LadenSchleifenwert in Speichern.SpeicherständeListe'Range loop
         
         if
           Speichern.SpeicherständeListe (LadenSchleifenwert) = Namen
           and
             Speichern.SpeicherständeListe (LadenSchleifenwert) /= ""
           and
             HauptmenüExtern = False
         then
            GlobaleVariablen.ZuLadenderSpielstand := LadenSchleifenwert;
            return Sicherheitsabfrage (LadenSchleifenwert);
            
         elsif
           Speichern.SpeicherständeListe (LadenSchleifenwert) = Namen
           and
             HauptmenüExtern
         then
            GlobaleVariablen.ZuLadenderSpielstand := LadenSchleifenwert;
            return True;
            
         else
            null;
         end if;
         
      end loop LadenNachNamenSchleife;
      
      Falsch.Falsch;
      GlobaleVariablen.ZuLadenderSpielstand := -10;
      
      return False;

   end Laden;
   

   
   function Sicherheitsabfrage
     (SlotnummerExtern : in Integer)
      return Boolean
   is begin
      
      Put_Line (Item => "Wollen sie diesen Spielstand " & To_Wide_Wide_String (Source => Speichern.SpeicherständeListe (SlotnummerExtern)) & " wirklich laden?");
      Put_Line (Item => "Jeder nicht gespeicherter Fortschritt geht dabei verloren.");
      
      return JaNein.JaNeinEinfach;
      
   end Sicherheitsabfrage;
   
   
   
   procedure Lädt
   is begin   

      Open (File => Datei,
            Mode => In_File,
            Name => "Test.Speicherdatei");

      Set_Line (File => Datei,
                To   => 1);

      PositionEinsSchleife:
      for PositionEinsSchleifenwert in AuswahlArray'Range (1) loop
         BereichEinsSchleife:
         loop

            if
              PositionEinsSchleifenwert = AuswahlArray'Last (1)
              and
                End_Of_Line (File => Datei)
            then
               exit BereichEinsSchleife;
               
            else
               null;
            end if;

            Get (File => Datei,
                 Item => Buffer);
            
            case
              Buffer
            is
               when ' ' =>
                  exit BereichEinsSchleife;
                  
               when others =>
                  null;
            end case;

            Append (Source   => AuswahlArray (1, PositionEinsSchleifenwert),
                    New_Item => Buffer);

         end loop BereichEinsSchleife;
      end loop PositionEinsSchleife;

      Set_Line (File => Datei,
                To   => 2);

      PositionZweiSchleife:
      for PositionZweiSchleifenwert in AuswahlArray'Range (1) loop
         BereichZweiSchleife:
         loop

            if
              PositionZweiSchleifenwert = AuswahlArray'Last (1)
              and
                End_Of_Line (File => Datei)
            then
               exit PositionZweiSchleife;
               
            else
               null;
            end if;

            Get (File => Datei,
                 Item => Buffer);
            
            case
              Buffer
            is
               when ' ' =>
                  exit PositionZweiSchleife;
                  
               when others =>
                  null;
            end case;

            Append (Source   => AuswahlArray (2, PositionZweiSchleifenwert),
                    New_Item => Buffer);

         end loop BereichZweiSchleife;
      end loop PositionZweiSchleife;

      Set_Line (File => Datei,
                To   => 3);

      PositionDreiSchleife:
      for PositionDreiSchleifenwert in AuswahlArray'Range (1) loop
         BereichDreiSchleife:
         loop

            if
              PositionDreiSchleifenwert = AuswahlArray'Last (1)
              and
                End_Of_Line (File => Datei)
            then
               exit PositionDreiSchleife;
               
            else
               null;
            end if;

            Get (File => Datei,
                 Item => Buffer);
            
            case
              Buffer
            is
               when ' ' =>
                  exit PositionDreiSchleife;
                  
               when others =>
                  null;
            end case;

            Append (Source   => AuswahlArray (3, PositionDreiSchleifenwert),
                    New_Item => Buffer);

         end loop BereichDreiSchleife;
      end loop PositionDreiSchleife;

      Close (Datei);
      
   end Lädt;
   
end Laden;
