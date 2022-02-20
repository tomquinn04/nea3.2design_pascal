program Project1;

{$R *.dres}

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  dashboard in 'dashboard.pas' {frameDashboard: TFrame},
  transactions in 'transactions.pas' {frameTransactions: TFrame},
  artists in 'artists.pas' {frameArtists: TFrame},
  datamodule in 'datamodule.pas' {DataModule1: TDataModule},
  splash in 'splash.pas' {frmSplash},
  System.SysUtils;


{$R *.res}

var
  SplashScreen: Tfrmsplash;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  // -- Splash Screen -- //
  SplashScreen := Tfrmsplash.Create(nil);
  SplashScreen.Show;
  SplashScreen.Update;
  Sleep(3000);
  // ------------------- //

  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  SplashScreen.Hide;
  SplashScreen.Free;

  Application.Run;
end.
