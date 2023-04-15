targetScope = 'subscription'

resource azbicepResourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'ARM3'
  location: 'eastus'
}
