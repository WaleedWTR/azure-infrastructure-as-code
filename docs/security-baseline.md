# Security Baseline

The sample template applies a small number of explicit controls so security intent is visible in source control.

## Storage

- anonymous blob access disabled
- shared-key access disabled
- cross-tenant object replication disabled
- OAuth authentication preferred
- HTTPS required
- TLS 1.2 minimum
- public network access disabled

## Networking

- application and management workloads are segmented
- direct inbound Internet traffic is explicitly denied at the sample NSG
- private-endpoint address space is reserved

## Monitoring

A Log Analytics workspace is deployed as a foundation for central telemetry.

## Production extensions

A production implementation would normally add:

- private endpoints and private DNS
- diagnostic settings on every supported resource
- managed identities
- RBAC assignments
- Azure Policy
- Defender for Cloud
- Key Vault for secret-bearing workloads
- subscription/resource locks where justified
- cost and security alerts
