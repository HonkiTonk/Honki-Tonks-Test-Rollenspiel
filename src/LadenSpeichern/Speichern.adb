with Ada.Directories;

with EinWort;
with JaNein;
with WortZuGanzeZahl;
with Falsch;

package body Speichern is

   procedure Speichern
   is begin
      
      if
        Ada.Directories.Exists (Speicherdateien)
      then
         null;
         
      else
         Ada.Directories.Create_Directory (New_Directory => "Speicherdateien");
      end if;

      Put_Line ("Auf welchem Slot wollen sie speichern?");
      Put_Line ("Zur Auswahl die Slotnummer oder den Namen eines bereits vorhandenen Speicherstandes eingeben:");
      
      for A in SpeicherständeListe'Range loop
         
         if
           A > 0
         then
            Put_Line (Integer'Wide_Image (A) & ". Slot - Name: " & To_Wide_String (SpeicherständeListe (A)));
            
         else
            null;
         end if;
         
      end loop;
      
      Namen := EinWort.EinWortOhneÄnderung;      
      Slot := WortZuGanzeZahl.WortZuGanzeZahl (Namen);
      
      case
        Slot
      is
         when SpeicherständeListe'Range =>
            if
              SpeicherständeListe (Slot) /= ""
              and
                Slot > 0
            then
               Sicherheitsabfrage (Slot);
               return;
               
            elsif
              Slot > 0
            then
               Schreiben (Slot);
               return;
               
            else
               null;
            end if;
            
         when others =>
            null;
      end case;
      
      SpeichernNachNamenSchleife:
      for A in SpeicherständeListe'Range loop
         
         if
           SpeicherständeListe (A) = Namen
           and
             SpeicherständeListe (A) /= ""
           and A > 0
         then
            Sicherheitsabfrage (A);
            return;
            
         else
            null;
         end if;
         
      end loop SpeichernNachNamenSchleife;
      
      Falsch.Falsch;

   end Speichern;
   
   
   
   procedure Sicherheitsabfrage
     (Slotnummer : in Integer)
   is begin
            
      Put_Line ("Wollen sie den Spielstand " & To_Wide_String (SpeicherständeListe (Slotnummer)) & " überschreiben?");
      Put_Line ("Ja");
      Put_Line ("Nein");
      Überschreiben := JaNein.JaNeinEinfach;
      
      case
        Überschreiben
      is
         when True =>
            Schreiben (Slotnummer);
                  
         when False =>
            null;
      end case;
      
   end Sicherheitsabfrage;
   
   
   
   procedure Schreiben
     (Slotnummer : in Integer)
   is begin
      
      null;
      
   end Schreiben;
   
end Speichern;
