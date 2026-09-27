# Deployment Runbook

## Prerequisites

- Azure CLI
- Bicep CLI available through Azure CLI
- Contributor or appropriate scoped deployment rights
- an existing resource group for the lab

## Validate

```bash
az bicep build --file main.bicep
```

## What-if

```bash
az deployment group what-if \
  --resource-group <resource-group> \
  --template-file main.bicep \
  --parameters parameters/dev.bicepparam
```

## Deploy

```bash
az deployment group create \
  --resource-group <resource-group> \
  --template-file main.bicep \
  --parameters parameters/dev.bicepparam
```

## Post-deployment checks

- confirm subnet ranges
- review effective NSG rules
- confirm Log Analytics retention
- check storage public-access settings
- verify resources use the intended region and naming
- review cost before leaving the lab running
