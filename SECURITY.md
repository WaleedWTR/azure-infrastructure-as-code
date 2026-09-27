# Security

This repository intentionally contains no credentials, secrets, tenant IDs or production values.

For real deployments:

- use workload identities / managed identities where possible
- use Azure RBAC instead of shared keys
- use private endpoints for sensitive services
- enable diagnostic settings
- use policy to enforce standards
- run what-if before deployment
- store environment secrets outside source control
