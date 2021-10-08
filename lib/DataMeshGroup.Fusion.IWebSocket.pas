unit DataMeshGroup.Fusion.IWebSocket;

interface

type
  TOnConnect = procedure(ASender: TObject; AErrCode: Word) of object;

  IWebSocket = interface
  ['{298856FA-EE9C-4648-AC19-B68344570644}']

    function GetAddress: string;
    procedure SetAddress(AAddress: string);

    function GetPort: string;
    procedure SetPort(APort: string);

    function GetProtocol: string;
    procedure SetProtocol(AProtocol: string);


    {$REGION 'properties'}
    function Connect: Boolean;
    procedure Disconnect;
    procedure Send(ASender: TObject; AErrCode: Word);
    procedure Receive(ASender: TObject; AErrCode: Word);

    property Address: string read GetAddress write SetAddress;
    property Port: string read GetPort write SetPort;
    property Protocol: string read GetProtocol write SetProtocol;
    {$ENDREGION}
  end;

implementation

end.
