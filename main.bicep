targetScope = 'resourceGroup'

param location string = resourceGroup().location
param environment string = 'dev'
param workloadName string = 'portfolio'
param addressPrefix string = '10.20.0.0/16'

var prefix = '${workloadName}-${environment}'

module network './modules/network.bicep' = {
  name: 'network'
  params: {
    location: location
    vnetName: '${prefix}-vnet'
    addressPrefix: addressPrefix
  }
}

module monitoring './modules/log-analytics.bicep' = {
  name: 'monitoring'
  params: {
    location: location
    workspaceName: '${prefix}-law'
  }
}

resource storage 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: take(uniqueString(resourceGroup().id, prefix), 20)
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
    minimumTlsVersion: 'TLS1_2'
    supportsHttpsTrafficOnly: true
    publicNetworkAccess: 'Enabled'
  }
}

output vnetId string = network.outputs.vnetId
output logAnalyticsWorkspaceId string = monitoring.outputs.workspaceId
output storageAccountId string = storage.id
