# Cost Considerations

This repository is intentionally small, but Azure labs can still generate cost.

## Primary cost drivers

- Log Analytics ingestion and retention
- storage capacity and transactions
- any future VMs, firewalls, gateways or Bastion resources

## Lab approach

- deploy only when testing
- use small synthetic datasets
- review Log Analytics retention
- remove unused resource groups
- use Azure budgets / cost alerts
- run `what-if` before deployment so unexpected resources are visible

## Portfolio principle

A cloud design is incomplete if it ignores operational cost. Architecture, security and cost should be considered together.
