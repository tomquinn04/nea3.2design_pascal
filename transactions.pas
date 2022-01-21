unit transactions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TframeTransactions = class(TFrame)
    gridRoot: TGridPanel;
    gridLeft: TGridPanel;
    gridRight: TGridPanel;
    lblRecentTransactions: TLabel;
    lblRecordTransaction: TLabel;
    gridRecordTransaction: TGridPanel;
    GridPanel1: TGridPanel;
    icnCircle1: TImage;
    GridPanel2: TGridPanel;
    icnCircle2: TImage;
    GridPanel3: TGridPanel;
    icnCircle3: TImage;
    GridPanel4: TGridPanel;
    icnCircle4: TImage;
    GridPanel5: TGridPanel;
    icnCircle5: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
