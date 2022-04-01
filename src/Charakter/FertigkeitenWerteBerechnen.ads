pragma Warnings (Off, "*array aggregate*");

package FertigkeitenWerteBerechnen is
   
   procedure FertigkeitenWerteBerechnen;
   
private
   
   type HauptwerteSpeicherArray is array (1 .. 7) of Integer;
   HauptwerteSpeicher : HauptwerteSpeicherArray;

end FertigkeitenWerteBerechnen;
