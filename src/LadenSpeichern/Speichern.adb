pragma Warnings (Off, "*array aggregate*");

with Ada.Directories; use Ada.Directories;

with EinWort;
with JaNein;
with WortZuGanzeZahl;
with Falsch;

package body Speichern is

   procedure Speichern
   is begin
      
      if
        Exists (Name => Speicherdateien)
      then
         null;
         
      else
         Create_Directory (New_Directory => Speicherdateien);
      end if;

      Put_Line (Item => "Auf welchem Slot wollen sie speichern?");
      Put_Line (Item => "Zur Auswahl die Slotnummer oder den Namen eines bereits vorhandenen Speicherstandes eingeben:");
      
      SpeicherständeSchleife:
      for SpeicherständeSchleifenwert in SpeicherständeListe'Range loop
         
         if
           SpeicherständeSchleifenwert > 0
         then
            Put_Line (Item => Integer'Wide_Wide_Image (SpeicherständeSchleifenwert) & ". Slot - Name: " & To_Wide_Wide_String (Source => SpeicherständeListe (SpeicherständeSchleifenwert)));
            
         else
            null;
         end if;
         
      end loop SpeicherständeSchleife;
      
      Namen := EinWort.EinWortOhneÄnderung;      
      Slot := WortZuGanzeZahl.WortZuGanzeZahl (EinWortEingabeStringExtern => Namen);
      
      case
        Slot
      is
         when SpeicherständeListe'Range =>
            if
              SpeicherständeListe (Slot) /= ""
              and
                Slot > 0
            then
               Sicherheitsabfrage (SlotnummerExtern => Slot);
               return;
               
            elsif
              Slot > 0
            then
               Schreiben (SlotnummerExtern => Slot);
               return;
               
            else
               null;
            end if;
            
         when others =>
            null;
      end case;
      
      SpeichernNachNamenSchleife:
      for SpielstandSchleifenwert in SpeicherständeListe'Range loop
         
         if
           SpeicherständeListe (SpielstandSchleifenwert) = Namen
           and
             SpeicherständeListe (SpielstandSchleifenwert) /= ""
           and
             SpielstandSchleifenwert > 0
         then
            Sicherheitsabfrage (SlotnummerExtern => SpielstandSchleifenwert);
            return;
            
         else
            null;
         end if;
         
      end loop SpeichernNachNamenSchleife;
      
      Falsch.Falsch;

   end Speichern;
   
   
   
   procedure Sicherheitsabfrage
     (SlotnummerExtern : in Integer)
   is begin
            
      Put_Line (Item => "Wollen sie den Spielstand " & To_Wide_Wide_String (Source => SpeicherständeListe (SlotnummerExtern)) & " überschreiben?");
      Put_Line (Item => "Ja");
      Put_Line (Item => "Nein");
      Überschreiben := JaNein.JaNeinEinfach;
      
      case
        Überschreiben
      is
         when True =>
            Schreiben (SlotnummerExtern => SlotnummerExtern);
                  
         when False =>
            null;
      end case;
      
   end Sicherheitsabfrage;
   
   
   
   procedure Schreiben
     (SlotnummerExtern : in Integer)
   is begin
      
      null;
      
   end Schreiben;
   
end Speichern;
