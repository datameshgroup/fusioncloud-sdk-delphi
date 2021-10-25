object DMTickets_DB: TDMTickets_DB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 320
  Width = 458
  object cdsTickets: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATE'
        DataType = ftDateTime
      end
      item
        Name = 'NUMBER'
        DataType = ftInteger
      end
      item
        Name = 'CUST_NAME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CUST_ID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TOTAL'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'cdsTicketsIndex3'
        Fields = 'ID'
      end>
    IndexName = 'cdsTicketsIndex3'
    Params = <>
    StoreDefs = True
    AfterOpen = cdsTicketsAfterOpen
    BeforePost = cdsTicketsBeforePost
    OnNewRecord = cdsTicketsNewRecord
    Left = 64
    Top = 72
    Data = {
      A90000009619E0BD010000001800000006000000000003000000A90002494401
      0049000000010005574944544802000200280004444154450800080000000000
      064E554D424552040001000000000009435553545F4E414D4501004900000001
      0005574944544802000200500007435553545F49440100490000000100055749
      44544802000200140005544F54414C0800040000000100075355425459504502
      00490006004D6F6E6579000000}
    object cdsTicketsID: TStringField
      FieldName = 'ID'
      Size = 40
    end
    object cdsTicketsDATE: TDateTimeField
      FieldName = 'DATE'
    end
    object cdsTicketsNUMBER: TIntegerField
      FieldName = 'NUMBER'
    end
    object cdsTicketsCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 80
    end
    object cdsTicketsCUST_ID: TStringField
      FieldName = 'CUST_ID'
    end
    object cdsTicketsTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
  end
end
