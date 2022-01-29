program Project1;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  dashboard in 'dashboard.pas' {frameDashboard: TFrame},
  transactions in 'transactions.pas' {frameTransactions: TFrame},
  artists in 'artists.pas' {frameArtists: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
