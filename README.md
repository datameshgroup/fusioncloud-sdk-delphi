# delphi-fusion-api

A delphi library for developers to connect and communicate with Unify - a platform created by DataMesh. This library is built and tested on Delphi 10.4



#### Features

- The library will handle internal connections to the websocket and security validations
- Based on the given request, the library will deserialize JSon response and return the appropriate object to the developer



### Usage

------

#### Setting up and connecting to Datamesh

- Include **DataMeshGroup.Fusion.IFusionClient.pas** in the uses list

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

- Include **Request Models** that will be needed by the client application

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

  

*Sample application will be updated in the coming weeks*