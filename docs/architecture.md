# Architecture and design decisions

## Segmentation

The lab uses separate subnets for application, management and private endpoints. The design is deliberately simple enough to deploy cheaply while demonstrating segmentation.

## Network controls

A Network Security Group is attached to the workload subnets. The sample rule explicitly denies direct inbound Internet traffic. In a real environment, additional rules would be driven by application flows and validated with effective-security-rule testing.

## Monitoring

A Log Analytics workspace is deployed as a shared operational telemetry destination.

## Storage

The sample storage account:

- disables anonymous blob access
- disables shared-key access
- requires HTTPS
- enforces TLS 1.2 or newer

A real environment would typically add private endpoints, diagnostic settings, RBAC assignments and policy enforcement.

## Naming

The root template creates a predictable workload/environment prefix so the modules stay reusable.
