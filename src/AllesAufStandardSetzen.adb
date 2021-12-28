with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

with Schlafsaal;
with Zeit;
with GlobalerHub;
with LokalerHubStuetzpunkt;
with Charaktere;
with VomSpielerWeggeworfen;

package body AllesAufStandardSetzen is

   procedure AufStandardSetzen
   is

      task CharaktereAufStandard;
      task ZeitAufStandard;
      task HubsAufStandard;
      task WeggeworfenAufStandard;
      task SchlafsaalAufStandard;
      task VerbindungsgangAufStandard;


      
      task body CharaktereAufStandard
      is begin
      
         Charaktere.Hauptcharakter.Geld := 0;
         Charaktere.Hauptcharakter.Inventar := (others => (0, 0, To_Unbounded_Wide_String ("")));
         Charaktere.Hauptcharakter.Zustände := (others => 0);
         Charaktere.Hauptcharakter.WaffenAusgerüstet := (others => 0);
         Charaktere.Hauptcharakter.RüstungsteileAusgerüstet := (others => 0);
         
      end CharaktereAufStandard;


      
      task body ZeitAufStandard
      is begin
         
         Zeit.Stunde := 6;
         Zeit.Minute := 0;
         Zeit.Tag := 0;
         
      end ZeitAufStandard;


      
      task body HubsAufStandard
      is begin
         
         GlobalerHub.OrteAuswahlGlobal := 10;
         LokalerHubStuetzpunkt.OrteAuswahlLokal := 100;
         
      end HubsAufStandard;



      task body WeggeworfenAufStandard
      is begin
         
         VomSpielerWeggeworfen.WeggeworfenSchlafsaal := (others => (0, 0, To_Unbounded_Wide_String ("")));
         
      end WeggeworfenAufStandard;


      
      task body SchlafsaalAufStandard
      is begin
         
         Schlafsaal.Start := True;
         Schlafsaal.SpindAusgeräumt := False;
         Schlafsaal.TürGeöffnet := False;
         Schlafsaal.SpindGeöffnet := False;
         Schlafsaal.FensterGeöffnet := False;
         
      end SchlafsaalAufStandard;



      task body VerbindungsgangAufStandard
      is begin
         
         null;
         
      end VerbindungsgangAufStandard;



   begin

      Put_Line ("Lade Spiel, bitte warten.");
      
   end AufStandardSetzen;

end AllesAufStandardSetzen;
