# delphi-fusion-api

A delphi library for developers to connect and communicate with Unify - a platform created by DataMesh. This library was built and tested on **Delphi 10.4**



#### Features

------

- The library will handle internal connections to the websocket and security validations

- Based on the given request, the library will deserialize JSon response and return the appropriate object to the developer



#### Dependencies

------

- **[Delphi Neon](https://github.com/paolo-rossi/delphi-neon):**	used for JSON parsing

- **[sgc WebSockets](https://www.esegece.com/websockets):**	for the communication protocol

  - **NOTE:** sgcWebSocket can connect to secure websocket servers  without the need to deploy openssl libraries by setting the `TLSOptions.IOHandler` property

    ```Delphi
    FWebSocket.TLSOptions.IOHandler := iohSChannel;
    ```

- **[Open SSL](https://www.openssl.org/):**	namely libeay32.dll and ssleay32.dll for secure communication

  

#### Configuration

------

- *SaleID*, *POI ID*, and *KEK* which will be provided by DataMesh should be configured in the FusionClient object

- *Provider Identification*, *Application Name*, *Software Version*, and *Certification Code* will also be needed as it will be used to supply the parameters for the LoginRequest. 

  

### Usage

------

#### Setting up and connecting to Datamesh

- Include **DataMeshGroup.Fusion.IFusionClient.pas** and **DataMeshGroup.Fusion.FusionClient.pas**  in the uses list

- Set the **ServiceID**, **SaleID**, **POIID**, and **KEK**

- Set the **URL**, **Port** and event handlers for the *FusionClient* websocket

  ```pascal
  uses
    DataMeshGroup.Fusion.IFusionClient;
    
  type
    TMain = class
      procedure OnConnect(ASender: TObject);
      procedure OnDisconnect(ASender: TObject);
      procedure OnReceiveMessage(ASender: TObject; const Text: string);
    private
      FFusionClient: IFusionClient;
  
      procedure Connect;
    end;
    
   implementation
  
  procedure TMain.Connect;
  begin
    ...
    FFusionClient.OnConnect := OnConnect;
    FFusionClient.OnDisconnect := OnDisconnect;
    FFusionClient.OnReceiveMessage := OnReceiveMessage;
    FFusionClient.ServiceID := '<set the service id>';
    FFusionClient.SaleID := '<set the sale id>';
    FFusionClient.PoiID := '<set the poi id>';
    FFusionClient.Kek := '<set the kek>';
    
    FFusionClient.Connect;
    ...
   end;
   
  ```

  

#### Sending and Receiving Message

- ##### **Sending**

  - Include **Request Models** that will be needed by the client application such as DataMeshGroup.Fusion.LoginRequest, DataMeshGroup.Fusion.PaymentRequest, DataMeshGroup.Fusion.LogoutRequest, etc. for login, payments, and logout respectively.

  - Create the model by providing the necessary parameters of each **Request Model** and calling **FusionClient.SendMessage** procedure and supplying the request object, *service ID*, *sale ID*, *POI ID* and *KEK* to execute the request.

    ```pascal
    uses
      ...
      DataMeshGroup.Fusion.LogInRequest,
      DataMeshGroup.Fusion.LogInResponse,
      DataMeshGroup.Fusion.Types;
      
      private
        FRequestType: TRequestType;
        
        procedure SendLoginRequest;
      ...
      
      procedure TMain.SendLoginRequest;
      var
        LoginReq: TLoginRequest;
      begin
        FRequestType := TRequestType.TRLogin;
    
        LoginReq := TLoginRequest.Create('Provider Identification', 'Application Name', 'Software Ver', 'Cert Code');
        try
          FFusionClient.SendMessage(LoginReq, FFusionClient.ServiceID, FFusionClient.SaleID, FFusionClient.PoiID, FFusionClient.KEK);
        finally
          LoginReq.Free;
        end;
      end;
    ```
    

  

- **Receiving**

  - Messages received from the server after each request will be handled in the ***OnReceiveMessage*** event of *FusionClient*.

  - Received messages are in JSON format and can be deserialized by the library by supplying the response objects of each requests made such as DataMeshGroup.Fusion.LoginResponse, DataMeshGroup.Fusion.PaymentResponse, DataMeshGroup.Fusion.LogoutResponse, etc.

    ```pascal
    procedure TMain.OnReceiveMessage(ASender: TObject; const Text: string);
    var
      LoginResponse: TLoginResponse
    begin
      LoginResponse := TLoginResponse.Create;
      try
        LoginResponse := FFusionClient.ReceiveMessage(TRequestType.TRLogin,
          Text, FFusionClient.kek) as TLoginResponse;
            
         ...
         // <additional code to handle the returned LoginResponse value>
      finally
        LoginResponse := nil;
        LoginResponse.Free;
      end;
    end;
    ```

    

  

