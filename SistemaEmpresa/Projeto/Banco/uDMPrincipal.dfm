object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Height = 348
  Width = 611
  object conFBConecao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\guilh\OneDrive\Documentos\ProjetoERP\SistemaEm' +
        'presa\Banco de dado\NOVOBANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    UpdateTransaction = fdtrnsctn1
    Left = 48
    Top = 16
  end
  object fdphysfbdrvrlnk1: TFDPhysFBDriverLink
    Left = 56
    Top = 160
  end
  object fdtrnsctn1: TFDTransaction
    Connection = conFBConecao
    Left = 56
    Top = 280
  end
  object ds1: TDataSource
    DataSet = fdtblCliente
    Left = 144
    Top = 24
  end
  object fdqryBancoPrincipal: TFDQuery
    Connection = conFBConecao
    SQL.Strings = (
      'select * From cliente')
    Left = 48
    Top = 224
  end
  object fdtblCliente: TFDTable
    Active = True
    IndexFieldNames = 'CLI_ID'
    Connection = conFBConecao
    Transaction = fdtrnsctn1
    UpdateTransaction = fdtrnsctn1
    UpdateOptions.UpdateTableName = 'CLIENTE'
    TableName = 'CLIENTE'
    Left = 248
    Top = 32
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
    object strngfldfdtbl1CLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      Origin = 'CLI_TELEFONE'
      Size = 60
    end
    object strngfldfdtbl1CLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 60
    end
    object strngfldfdtbl1CLI_TELEFONE2: TStringField
      FieldName = 'CLI_TELEFONE2'
      Origin = 'CLI_TELEFONE2'
      Size = 60
    end
    object intgrfldClientemax: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'max'
      Calculated = True
    end
  end
  object fdcmnd1: TFDCommand
    Connection = conFBConecao
    CommandText.Strings = (
      'Select * From cliente')
    Left = 40
    Top = 96
  end
  object fdtblpesquisa: TFDTable
    Connection = conFBConecao
    Left = 312
    Top = 32
    object strngfldfdtbl1Pesquisa: TStringField
      FieldName = 'Pesquisa'
    end
  end
end
