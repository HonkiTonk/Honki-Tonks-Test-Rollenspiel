pragma Warnings (Off, "*array aggregate*");

with EinWort;
with Falsch;
  
package body ImAusruhen is

   function ImAusruhen
     return Integer
   is begin
         
      Text := EinWort.EinWort;
      
      if
        Text = "morgen"
        or
          Text = "bis morgen"
      then
         return 1;
         
      elsif
        Text = "mittag"
        or
          Text = "bis mittag"
      then
         return 2;
         
      elsif
        Text = "abend"
        or
          Text = "bis abend"
      then
         return 3;
         
      elsif
        Text = "mitternacht"
        or
          Text = "bis mitternacht"
          or
            Text = "nacht"
            or
              Text = "bis nacht"
      then
         return 4;
         
      elsif
        Text = "gar nicht"
        or
          Text = "nicht"
      then
         return 5;
         
      elsif
        Text = "zeit"
        or
          Text = "uhrzeit"
      then
         return 0;
         
      else
         Falsch.Falsch;
         return -1;
      end if;
         
   end ImAusruhen;

end ImAusruhen;
