unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Controls, FMX.StdCtrls,
  FMX.ListBox, Fmx.Bind.Navigator, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid,
  Data.DB, Datasnap.DBClient, FMX.WebBrowser, FMX.TabControl, FMX.Objects,
  FMX.Layouts, View.WebCharts;

type
  TForm2 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    WebBrowser1: TWebBrowser;
    ClientDataSet1: TClientDataSet;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    NavigatorBindSourceDB1: TBindNavigator;
    Layout5: TLayout;
    Layout6: TLayout;
    ComboBox1: TComboBox;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    ClientDataSet5: TClientDataSet;
    ClientDataSet6: TClientDataSet;
    ClientDataSet7: TClientDataSet;
    WebCharts1: TWebCharts;
    SpeedButton14: TSpeedButton;
    ClientDataSet7LAST_NAME: TStringField;
    ClientDataSet7FIRST_NAME: TStringField;
    ClientDataSet7ACCT_NBR: TFloatField;
    ClientDataSet7CITY: TStringField;
    ClientDataSet7STATE: TStringField;
    ClientDataSet7ZIP: TStringField;
    ClientDataSet7TELEPHONE: TStringField;
    ClientDataSet7DATE_OPEN: TDateField;
    ClientDataSet7SS_NUMBER: TFloatField;
    ClientDataSet7BIRTH_DATE: TDateField;
    ClientDataSet7RISK_LEVEL: TStringField;
    ClientDataSet7OCCUPATION: TStringField;
    ClientDataSet7OBJECTIVES: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
  private
    { Private declarations }
    function ConvertString(aValue : String) : String;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0 : BindSourceDB1.DataSet := ClientDataSet1;
    1 : BindSourceDB1.DataSet := ClientDataSet2;
    2 : BindSourceDB1.DataSet := ClientDataSet3;
    3 : BindSourceDB1.DataSet := ClientDataSet4;
    4 : BindSourceDB1.DataSet := ClientDataSet5;
    5 : BindSourceDB1.DataSet := ClientDataSet6;
    6 : BindSourceDB1.DataSet := ClientDataSet7;
  end;
end;

function TForm2.ConvertString(aValue: String): String;
var
  rbs : RawByteString;
begin
  rbs := UTF8Encode(aValue);
  SetCodePage(rbs,0,false);
  Result := UnicodeString(rbs);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ClientDataSet1.LoadFromFile('..\..\..\VCL\Data\CDSChats.xml');
  ClientDataSet1.Open;

  ClientDataSet2.LoadFromFile('..\..\..\VCL\Data\CDSChats2.xml');
  ClientDataSet2.Open;

  ClientDataSet3.LoadFromFile('..\..\..\VCL\Data\CDSChats3.xml');
  ClientDataSet3.Open;

  ClientDataSet4.LoadFromFile('..\..\..\VCL\Data\CDSChats4.xml');
  ClientDataSet4.Open;

  ClientDataSet5.LoadFromFile('..\..\..\VCL\Data\customer.xml');
  ClientDataSet5.Open;

  ClientDataSet6.LoadFromFile('..\..\..\VCL\Data\clients.xml');
  ClientDataSet6.Open;

  ClientDataSet7.LoadFromFile('..\..\..\VCL\Data\clients.xml');
  ClientDataSet7.Open;
end;

procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
    WebCharts1
    .NewProject
    .Cards
      .FieldHeader('Company')
      .FieldTitle('City')
      .FieldBody('Contact')
      .ColSpan(4)
      .Colors
        .Secondary
      .&End
      .DataSet
        .DataSet(ClientDataSet5)
      .&End
    .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton11Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
    WebCharts1
    .NewProject
    .Image
      .ImageClass
        .rounded
        .imgThumbnail
      .&End
      .DataSet
        .Field('PICTURE')
        .DataSet(ClientDataSet6)
      .&End
    .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton12Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
    WebCharts1
    .NewProject

    .Buttons
      .Title('Primary')
      .ButtonClass
        .primary
      .&End
      //.CallbackLink('Primary', 'ShowButtons')
    .&End

    .Buttons
      .Title('secondary')
      .ButtonClass
        .secondary
      .&End
      //.CallbackLink('secondary', 'ShowButtons')
    .&End

    .Buttons
      .Title('success')
      .ButtonClass
        .success
      .&End
      //.CallbackLink('success', 'ShowButtons')
    .&End

    .Buttons
      .Title('danger')
      .ButtonClass
        .danger
      .&End
      //.CallbackLink('danger', 'ShowButtons')
    .&End

    .Buttons
      .Title('warning')
      .ButtonClass
        .warning
      .&End
      //.CallbackLink('warning', 'ShowButtons')
    .&End

    .Buttons
      .Title('info')
      .ButtonClass
        .info
      .&End
      //.CallbackLink('info', 'ShowButtons')
    .&End

    .Buttons
      .Title('light')
      .ButtonClass
        .light
      .&End
      //.CallbackLink('light', 'ShowButtons')
    .&End

    .Buttons
      .Title('dark')
      .ButtonClass
        .dark
      .&End
      //.CallbackLink('dark', 'ShowButtons')
    .&End

    .Jumpline
    .Jumpline

    .Buttons
      .Title('outline')
      .ButtonClass
        .outline
        .primary
      .&End
      //.CallbackLink('outline', 'ShowButtons')
    .&End

    .Buttons
      .Title('small')
      .ButtonClass
        .secondary
        .small
      .&End
      //.CallbackLink('small', 'ShowButtons')
    .&End

    .Buttons
      .Title('large')
      .ButtonClass
        .success
        .large
      .&End
      //.CallbackLink('large', 'ShowButtons')
    .&End

    .Jumpline
    .Jumpline

    .Buttons
      .Title('block')
      .ButtonClass
        .danger
        .block
      .&End
      //.CallbackLink('block', 'ShowButtons')
    .&End

    .Jumpline
    .Jumpline

    .Buttons
      .Title('active')
      .ButtonClass
        .warning
        .active
      .&End
      //.CallbackLink('active', 'ShowButtons')
    .&End

    .Buttons
      .Title('disabled')
      .ButtonClass
        .info
        .disabled
      .&End
      //.CallbackLink('disabled', 'ShowButtons')
    .&End


    .WebBrowser(WebBrowser1)
    .CallbackJS
      .ClassProvider(Self)
    .&End
    .Generated;
end;

procedure TForm2.SpeedButton13Click(Sender: TObject);
begin
  TabControl1.TabIndex := 1;
end;

procedure TForm2.SpeedButton14Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
    WebCharts1
    .NewProject
    .Table
      .TableClass
        .tableSm
        .tableHover
      .EndTableClass
      .DataSet
        //.CallbackLink('CustNo', 'RelCust')
        //.CallbackLink('Contact', 'RelContato')
        .DataSet(ClientDataSet5)
      .&End
    .&End
    .WebBrowser(WebBrowser1)
    .CallbackJS
      .ClassProvider(Self)
    .&End
    .Generated;
end;

procedure TForm2.SpeedButton15Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
    WebCharts1
    .NewProject
    .Table
      .TableClass
        .tableSm
        .tableHover
      .EndTableClass
      .DataSet
        //.CallbackLink('ACCT_NBR', 'RelAvatar')
        .DataSet(ClientDataSet7)
      .&End
    .&End
    .WebBrowser(WebBrowser1)
    .CallbackJS
      .ClassProvider(Self)
    .&End
    .Generated;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
  WebCharts1
  .NewProject
    .Rows
      .Title
        .Configuracoes
          .H1(ConvertString('Gr�fico de Barras'))
        .&End
      .&End
    .&End
    .Jumpline
    .Jumpline
    .Charts
      .Bar
        .Attributes
          .Name(ConvertString('Meu Grafico de Barras'))
          .ColSpan(12)
          .Title(ConvertString('Meu Gr�fico de Barras'))
          .DataSet
            .textLabel('Meu DataSet 1')
            .DataSet(ClientDataSet1)
          .&End
          .DataSet
            .textLabel('Meu DataSet 2')
            .DataSet(ClientDataSet2)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
WebCharts1
  .NewProject
    .Rows
      .Title
        .Configuracoes
          .H1(ConvertString('Gr�fico de Barras'))
        .&End
      .&End
    .&End
    .Jumpline
    .Jumpline
    .Charts
      .Bar
        .Attributes
          .Name(ConvertString('Meu Gr�fico de Barras'))
          .ColSpan(12)
          .Title(ConvertString('Meu Gr�fico de Barras'))
          .DataSet
            .textLabel('Meu DataSet 1')
            .DataSet(ClientDataSet1)
            .Types('line')
            .Fill('false')
            .BorderWidth(2)
            .BorderColor('30,182,203')
          .&End
          .DataSet
            .textLabel('Meu DataSet 2')
            .DataSet(ClientDataSet2)
            .Types('bar')
          .&End
          .DataSet
            .textLabel('Meu DataSet 3')
            .DataSet(ClientDataSet2)
            .Types('bar')
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
  .NewProject
    .Rows
      .Title
        .Configuracoes
          .H1('Grafico de Barras')
        .&End
      .&End
    .&End
    .Jumpline
    .Jumpline
    .Charts
      .BarHorizontal
        .Attributes
          .Name('Meu Grafico de Barras')
          .ColSpan(12)
          .Title('Meu Grafico de Barras')
          .DataSet
            .textLabel('Meu DataSet 1')
            .DataSet(ClientDataSet1)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
    .NewProject
      .Charts
        .Lines
          .Attributes
            .Name('Meu Grafico de Barras')
            .ColSpan(12)
            .Title('Meu Grafico de Barras')
            .DataSet
              .textLabel('Meu DataSet 1')
              .DataSet(ClientDataSet1)
              .BackgroundColor('227,233,235')
              .BorderColor('227,233,235')
              .Fill('false')
            .&End
            .DataSet
              .textLabel('Meu DataSet 2')
              .DataSet(ClientDataSet2)
              .BackgroundColor('30,182,203')
              .BorderColor('30,182,203')
              .Fill('false')
            .&End

          .&End
        .&End
      .&End
      .Charts
        .Lines
          .Attributes
            .Name('Meu Grafico de Barras')
            .ColSpan(12)
            .Title('Meu Grafico de Barras')
            .DataSet
              .textLabel('Meu DataSet 1')
              .DataSet(ClientDataSet1)
              .BackgroundColor('227,233,235')
              .BorderColor('227,233,235')
              .Fill('false')
            .&End
            .DataSet
              .textLabel('Meu DataSet 2')
              .DataSet(ClientDataSet2)
              .BackgroundColor('30,182,203')
              .BorderColor('30,182,203')
              .Fill('false')
            .&End
          .&End
        .&End
      .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
    .NewProject
      .Charts
        .LineStacked
          .Attributes
            .Name('Meu Grafico de Barras')
            .ColSpan(12)
            .Title('Meu Grafico de Barras')
            .DataSet
              .textLabel('Meu DataSet 1')
              .DataSet(ClientDataSet1)
              .BackgroundColor('227,233,235')
              .BorderColor('227,233,235')
            .&End
            .DataSet
              .textLabel('Meu DataSet 2')
              .DataSet(ClientDataSet2)
              .BackgroundColor('30,182,203')
              .BorderColor('30,182,203')
            .&End
          .&End
        .&End
      .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
  .NewProject
    .Charts
      .Pie
        .Attributes
          .Name('Meu Grafico Pie')
          .ColSpan(12)
          .Title('Meu Grafico Pie')
          .DataSet
            .textLabel('Meu DataSet 3')
            .DataSet(ClientDataSet3)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
  .NewProject
    .Charts
      .Doughnut
        .Attributes
          .Name('Meu Grafico Doughnut')
          .ColSpan(12)
          .Title('Meu Grafico Doughnut')
          .DataSet
            .textLabel('Meu DataSet 4')
            .DataSet(ClientDataSet4)
          .&End
          .DataSet
            .textLabel('Meu DataSet 3')
            .DataSet(ClientDataSet3)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
    .NewProject
      .Rows
        .Title
          .Configuracoes
            .H2('Dashboard')
          .&End
        .&End
      .&End

      .Jumpline
      .Jumpline

      .Rows
        .Title
          .Configuracoes
            .H4('Movimento Financeiro')
          .&End
        .&End
      .&End

      .Jumpline

      .Charts
        .Bar
          .Attributes
            .Name('analiseMensal')
            .Title('Analise Mensal')
            .Heigth(80)
            .DataSet
              .DataSet(ClientDataSet1)
            .&End
          .&End
        .&End
      .&End


      .Jumpline

      .Rows
        .Title
          .Configuracoes
            .H4('Entradas/Saidas')
          .&End
        .&End
      .&End



      .Rows

        .Tag
          .Add(
            WebCharts1
            .ContinuosProject
              .Charts
                .Doughnut
                  .Attributes
                    .Legend(false)
                    .Name('movimento1')
                    .ColSpan(4)
                    .DataSet
                      .textLabel('Movimento 1')
                      .DataSet(ClientDataSet3)
                    .&End
                  .&End
                .&End
              .&End
              .HTML
          )
        .&End

        .Tag
          .Add(
            WebCharts1
            .ContinuosProject
              .Charts
                .Doughnut
                  .Attributes
                    .Legend(false)
                    .Name('movimento2')
                    .ColSpan(4)
                    .DataSet
                      .textLabel('Movimento 2')
                      .DataSet(ClientDataSet4)
                    .&End
                  .&End
                .&End
              .&End
              .HTML
          )
        .&End

        .Tag
          .Add(
            WebCharts1
            .ContinuosProject
              .Charts
                .Doughnut
                  .Attributes
                    .Legend(false)
                    .Name('movimento3')
                    .ColSpan(4)
                    .DataSet
                      .textLabel('Movimento 3')
                      .DataSet(ClientDataSet3)
                    .&End
                  .&End
                .&End
              .&End
              .HTML
          )
        .&End
      .&End
      .Jumpline
      .Rows
        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .Lines
                    .Attributes
                      .Name('graficolinhas')
                      .ColSpan(12)
                      .Heigth(50)
                      .DataSet
                        .DataSet(ClientDataSet2)
                        .textLabel('Analise de Compras Mensal')
                        .BackgroundColor('227,233,235')
                        .BorderColor('227,233,235')
                        .Fill('false')
                      .&End
                      .DataSet
                        .DataSet(ClientDataSet1)
                        .textLabel('Analise de Compras Mensal')
                        .BackgroundColor('30,182,203')
                        .BorderColor('30,182,203')
                        .Fill('false')
                      .&End
                    .&End
                  .&End
                .&End
              .HTML
          )
        .&End
      .&End
      .Jumpline
      .Rows
        .Title
          .Configuracoes
            .H4('Registros de Atividades')
          .&End
        .&End
      .&End
      .Jumpline
      .Jumpline
      .Table
        .TableClass
          .tableSm
          .tableHover
        .EndTableClass
        .DataSet
          .DataSet(ClientDataSet5)
        .&End
      .&End


    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
TabControl1.TabIndex := 0;
  WebCharts1
    .AddResource('<link href="css/green.css" rel="stylesheet">')
    .AddResource('<link href="css/custom.min.css" rel="stylesheet">')
    .NewProject

      //Criando uma Linha com 6 Colunas e Adicionando conteudo HTML em cada uma
      //dessas colunas
      .Rows
        ._Div
          .ColSpan(2)
          .Add('<span class="count_top">' +
               '  <i class="fas fa-user"></i> Total Users ' +
               '</span>' +
               '<div class="count" style="font-size:  40px;">2500</div>' +
               '<span class="count_bottom"> ' +
               '  <i class="green"><i class="fa fa-angle-up"></i>4% </i> From last Week ' +
               '</span> ')
        .&End
        ._Div
          .ColSpan(2)
          .Add('<span class="count_top">' +
               '  <i class="fa fa-clock-o"></i> Average Time ' +
               '</span>' +
               '<div class="count" style="font-size:  40px;">123</div>' +
               '<span class="count_bottom"> ' +
               '  <i class="green"><i class="fa fa-angle-up"></i>3% </i> From last Week' +
               '</span> ')
        .&End
        ._Div
          .ColSpan(2)
          .Add('<span class="count_top">' +
               '  <i class="fa fa-user"></i> Total Males ' +
               '</span>' +
               '<div class="count" style="font-size: 40px; color: #1ABB9C;">2,500</div>' +
               '<span class="count_bottom"> ' +
               '  <i class="green"><i class="fa fa-angle-up"></i>34% </i> From last Week ' +
               '</span> ')
        .&End
        ._Div
          .ColSpan(2)
          .Add('<span class="count_top">' +
               '  <i class="fa fa-user"></i> Total Females ' +
               '</span>' +
               '<div class="count" style="font-size:  40px;">4,567</div>' +
               '<span class="count_bottom"> ' +
               '  <i class="red"><i class="fa fa-angle-down"></i>12% </i> From last Week ' +
               '</span> ')
        .&End
        ._Div
          .ColSpan(2)
          .Add('<span class="count_top">' +
               '  <i class="fa fa-user"></i> Total Collections ' +
               '</span>' +
               '<div class="count" style="font-size:  40px;">2,315</div>' +
               '<span class="count_bottom"> ' +
               '  <i class="green"><i class="fa fa-angle-up"></i>34% </i> From last Week ' +
               '</span> ')
        .&End
        ._Div
          .ColSpan(2)
          .Add('<span class="count_top">' +
               '  <i class="fa fa-user"></i> Total Connections ' +
               '</span>' +
               '<div class="count" style="font-size:  40px;">7,325</div>' +
               '<span class="count_bottom"> ' +
               '  <i class="green"><i class="fa fa-angle-up"></i>54% </i> From last Week ' +
               '</span> ')
        .&End
      .&End

      //Pulando Linha
      .Jumpline

      //Adicionando uma nova linha com um gr�fico LineStack e Barras Horizontal
      .Rows

        //Adicionando Grafico LineStacked
        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .LineStacked
                    .Attributes
                      .Name('linestacked1')
                      .ColSpan(8)
                      .Heigth(150)
                      .Title('Network Activities Graph title sub-title')
                      .DataSet
                        .textLabel('Meu DataSet 1')
                        .DataSet(ClientDataSet1)
                        .BackgroundColor('227,233,235')
                        .BorderColor('227,233,235')
                      .&End
                      .DataSet
                        .textLabel('Meu DataSet 2')
                        .DataSet(ClientDataSet2)
                        .BackgroundColor('26,187,156')
                        .BorderColor('26,187,156')
                      .&End
                    .&End
                  .&End
                .&End
                .HTML
          )
        .&End

        //Adicionando Grafico Barras Horizontal
        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .BarHorizontal
                    .Attributes
                      .Name('horizontabar1')
                      .ColSpan(4)
                      .Heigth(295)
                      .Title('Top Campaign Performance')
                      .DataSet
                        .textLabel('Meu DataSet 1')
                        .DataSet(ClientDataSet3)
                        .BackgroundColor('26,187,156')
                        .BorderColor('26,187,156')
                      .&End
                    .&End
                  .&End
                .&End
                .HTML
          )
        .&End
      .&End

      .Rows
        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .BarHorizontal
                    .Attributes
                      .Name('horizontabar2')
                      .ColSpan(4)
                      .Heigth(295)
                      .Title('App Usage across versions')
                      .DataSet
                        .textLabel('Meu DataSet 1')
                        .DataSet(ClientDataSet3)
                        .BackgroundColor('26,187,156')
                        .BorderColor('26,187,156')
                      .&End
                    .&End
                  .&End
                .&End
                .HTML
          )
        .&End

        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .Doughnut
                    .Attributes
                      .Name('Doughnut')
                      .ColSpan(4)
                      .Heigth(295)
                      .Title('Device Usage')
                      .DataSet
                        .textLabel('Meu DataSet 1')
                        .DataSet(ClientDataSet4)
                        .BackgroundColor('26,187,156')
                        .BorderColor('227,233,235')
                      .&End
                    .&End
                  .&End
                .&End
                .HTML
          )
        .&End

        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .Doughnut
                    .Attributes
                      .Name('Pie1')
                      .ColSpan(4)
                      .Heigth(295)
                      .Title('Device Usage')
                      .DataSet
                        .textLabel('Meu DataSet 1')
                        .DataSet(ClientDataSet3)
                        .BackgroundColor('227,233,235')
                        .BorderColor('26,187,156')
                      .&End
                    .&End
                  .&End
                .&End
                .HTML
          )
        .&End


      .&End


    .WebBrowser(WebBrowser1)
    .Generated;
end;

end.