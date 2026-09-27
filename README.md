# Azure Infrastructure as Code

![Bicep validation](https://github.com/WaleedWTR/azure-infrastructure-as-code/actions/workflows/bicep.yml/badge.svg)

A modular Azure Bicep portfolio project demonstrating repeatable deployment of a small, governed cloud foundation.

> **Portfolio note:** This is a public lab implementation. Names, data and configuration are generic and contain no employer-specific material.

## What this project demonstrates

- modular Bicep design
- virtual networking and subnet segmentation
- Network Security Groups
- Log Analytics
- storage deployment with secure defaults
- parameterised environments
- deployment validation in CI
- operational documentation and guardrails

## Architecture

```text
Resource Group
├── Virtual Network
│   ├── app subnet
│   ├── management subnet
│   └── private-endpoint subnet
├── Network Security Group
├── Log Analytics Workspace
└── Storage Account
```

## Build

```bash
az bicep build --file main.bicep
```

## Deploy

```bash
az deployment group create \
  --resource-group <resource-group> \
  --template-file main.bicep \
  --parameters parameters/dev.bicepparam
```

## Principles

- least privilege
- private connectivity where appropriate
- diagnostic visibility
- environment parameterisation
- no secrets in source control
- reusable modules rather than copied resources

## Documentation

- [Architecture and design decisions](docs/architecture.md)
- [Deployment runbook](docs/deployment-runbook.md)
- [Security baseline](docs/security-baseline.md)
- [Cost considerations](docs/cost-considerations.md)
- [Technical references](docs/references.md)

## Skills demonstrated

**Azure · Bicep · Infrastructure as Code · Networking · Governance · Security · GitHub Actions**
