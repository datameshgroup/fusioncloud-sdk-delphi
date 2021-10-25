object DMQuotes: TDMQuotes
  OldCreateOrder = False
  Height = 150
  Width = 198
  object cdsQuotes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EXCHANGE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OPEN'
        DataType = ftFloat
      end
      item
        Name = 'HIGH'
        DataType = ftFloat
      end
      item
        Name = 'LOW'
        DataType = ftFloat
      end
      item
        Name = 'LAST'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cdsQuotesIndex1'
        Fields = 'ID'
      end>
    IndexName = 'cdsQuotesIndex1'
    Params = <>
    StoreDefs = True
    AfterOpen = cdsQuotesAfterOpen
    BeforePost = cdsQuotesBeforePost
    Left = 40
    Top = 32
    Data = {
      9D0000009619E0BD0100000018000000080000000000030000009D0002494404
      00010000000000044E414D450100490000000100055749445448020002001E00
      0845584348414E47450100490000000100055749445448020002001E00044F50
      454E080004000000000004484947480800040000000000034C4F570800040000
      000000044C4153540800040000000000064348414E4745080004000000000000
      00}
    object cdsQuotesID: TIntegerField
      FieldName = 'ID'
    end
    object cdsQuotesNAME: TStringField
      FieldName = 'NAME'
      Size = 30
    end
    object cdsQuotesEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 30
    end
    object cdsQuotesOPEN: TFloatField
      FieldName = 'OPEN'
    end
    object cdsQuotesHIGH: TFloatField
      FieldName = 'HIGH'
    end
    object cdsQuotesLOW: TFloatField
      FieldName = 'LOW'
    end
    object cdsQuotesLAST: TFloatField
      FieldName = 'LAST'
    end
    object cdsQuotesCHANGE: TFloatField
      FieldName = 'CHANGE'
    end
  end
end
