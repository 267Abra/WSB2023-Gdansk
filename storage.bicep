param location string = resourceGroup().location

@minLength(3)
@maxLength(24)
param stgName string 

var storageName = toLower(stgName)

resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
  }
}
