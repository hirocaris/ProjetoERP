object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 262
  Width = 362
  object con1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      
        'Database=C:\Users\guilh\OneDrive\Documentos\SistemaEmpresa\Banco' +
        ' de dado\NOVOBANCO.FDB'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Transaction = fdtrnsctn1
    UpdateTransaction = fdtrnsctn1
    Left = 40
    Top = 16
  end
  object fdcmnd1: TFDCommand
    Connection = con1
    CommandText.Strings = (
      'select * from cliente')
    Left = 112
    Top = 16
  end
  object fdphysfbdrvrlnk1: TFDPhysFBDriverLink
    Left = 216
    Top = 16
  end
  object fdtrnsctn1: TFDTransaction
    Connection = con1
    Left = 256
    Top = 88
  end
  object fdtbl1: TFDTable
    IndexFieldNames = 'CLI_ID'
    Connection = con1
    Transaction = fdtrnsctn1
    UpdateOptions.UpdateTableName = 'CLIENTE'
    TableName = 'CLIENTE'
    Left = 184
    Top = 160
    object intgrfldfdtbl1CLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldfdtbl1CLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Size = 100
    end
    object strngfldfdtbl1CLI_NOMEFANTASIA: TStringField
      FieldName = 'CLI_NOMEFANTASIA'
      Origin = 'CLI_NOMEFANTASIA'
      Size = 100
    end
    object strngfldfdtbl1CLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      Size = 60
    end
    object strngfldfdtbl1CLIE_CNPJ: TStringField
      FieldName = 'CLIE_CNPJ'
      Origin = 'CLIE_CNPJ'
      Size = 60
    end
    object strngfldfdtbl1CLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      Size = 100
    end
    object strngfldfdtbl1CLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      Size = 100
    end
    object strngfldfdtbl1CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 100
    end
    object strngfldfdtbl1CLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 100
    end
    object strngfldfdtbl1CLI_RUA: TStringField
      FieldName = 'CLI_RUA'
      Origin = 'CLI_RUA'
      Size = 100
    end
    object strngfldfdtbl1CLI_NUMERO: TStringField
      FieldName = 'CLI_NUMERO'
      Origin = 'CLI_NUMERO'
      Size = 60
    end
    object strngfldfdtbl1CLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
      Size = 60
    end
  end
  object fdqrySQL: TFDQuery
    Connection = con1
    Transaction = fdtrnsctn1
    SQL.Strings = (
      'select *from cliente')
    Left = 112
    Top = 160
  end
end
