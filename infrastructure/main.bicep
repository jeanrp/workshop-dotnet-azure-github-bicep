targetScope = 'resourceGroup'
@allowed(['dev', 'prod'])
param environment string

module appService './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-jeanrp-${environment}'
    location: 'centralus'
    environment: environment
  }
}


