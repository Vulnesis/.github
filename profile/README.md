<p align="center">
  <a href="https://www.vulnes.is/">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://www.vulnes.is/images/vulnesis-banner-white.svg">
      <img src="https://www.vulnes.is/images/vulnesis-banner-dark.svg" alt="Vulnesis" width="360">
    </picture>
  </a>
</p>

<p align="center">
  <strong>Tools we use ourselves.</strong><br>
  These are the same binaries and specifications Vulnesis runs in production, and you can inspect, fork or run any of them without an account. The standards we write are public, and so is every vulnerability record we publish.
</p>

<p align="center">
  <a href="https://www.vulnes.is/">Website</a> ·
  <a href="https://docs.vulnes.is/">Documentation</a> ·
  <a href="https://www.vulnes.is/open-source">All open source projects</a> ·
  <a href="https://discord.gg/AjRacqqNWX">Discord</a>
</p>

## Open source

### Flagships

| Project | What it is | Licence |
|---|---|---|
| [Code Scanner CLI](https://github.com/Vulnesis/cli) | One binary covering SCA, SAST, secrets, IaC, containers and licences. It proves reachability with tree-sitter call graphs, runs malscan over your installed dependency bytes, enforces quality gates, and emits an AI-BOM and a post-quantum CBOM. Drop it into a pre-commit hook or a CI step. [Docs](https://docs.vulnes.is/cli/) | AGPL-3.0 |
| [Belai](https://github.com/Vulnesis/belai) | A safer LLM coding harness. Sealed delimiters with a nonce and SHA-256 hash, a security classifier on every untrusted tool result, and fail-closed posture gates, built into the harness. Agents, crews and a shared kanban run on your own machines with no telemetry. [belai.vulnes.is](https://belai.vulnes.is/) | Apache-2.0 |
| [Keleustes](https://github.com/Vulnesis/keleustes) | The desktop Software Factory. A native Rust app that is the server for a fleet of Belai hosts: board, checkpoints, workflows, budgets, a vault and an audit trail in one window, with no web console and no sign-in. Hosts join over mutual TLS with a one-time token. In pre-release: binaries for Linux, macOS and Windows are on the releases page. [Docs](https://docs.vulnes.is/keleustes/) | Apache-2.0 |
| [AI Coding Skills](https://github.com/Vulnesis/strix-ai-coding-assistant) | Strix adds VDB lookups and remediation hints to Claude Code, Cursor, Windsurf, Codex, Gemini CLI and anything else that reads SKILLS.md. Eighteen skills, five subagents and three guard hooks, installed with `vulnetix agent install`. [Docs](https://docs.vulnes.is/strix/) | Apache-2.0 |

### Standards and public data

| Project | What it is | Licence |
|---|---|---|
| [IETF CRIT Spec](https://github.com/Vulnesis/ietf-crit-spec) | Cloud Resource Identifier Templates, an active IETF draft for telling tools which AWS, Azure, GCP, Cloudflare or Oracle resources a CVE actually affects. [Datatracker](https://datatracker.ietf.org/doc/draft-vulnetix-crit/) · [Validator](https://crit.vulnes.is/validator/) | IETF draft |
| [Advisory Database](https://github.com/Vulnesis/advisory-database) | Every vulnerability Vulnesis finds is issued as GCVE GNA 110 and committed here first, in CVE JSON 5, OSV and Vulnesis formats, so the original source of our own records is something you can clone. | CC-BY-4.0 |
| [Transparency Exchange API](https://www.vulnes.is/features/transparency-exchange) | A conformant OWASP TEA server and client for publishing SBOMs, CBOMs, AI-BOMs, VEX and provenance that any consumer can resolve from a single identifier. [Vulnesis/transparency-exchange-api](https://github.com/Vulnesis/transparency-exchange-api) · [CycloneDX/transparency-exchange-api](https://github.com/CycloneDX/transparency-exchange-api) · [Docs](https://docs.vulnes.is/tea/) | OWASP · CycloneDX |
| [Python SDK SSVC](https://github.com/Vulnesis/python-ssvc) | Stakeholder-Specific Vulnerability Categorization in Python. Drop-in scoring with no service call. | MIT |
| [TypeScript SDK SSVC](https://github.com/Vulnesis/typescript-ssvc) | The same SSVC scoring in idiomatic TypeScript, with zero dependencies. | MIT |
| [Breach Notes](https://github.com/Vulnesis/breach-notes) | Curated post-mortems of public breaches as structured YAML records, in plain English. [RSS feed](https://breachnotes.vulnes.is/index.xml) | MIT |

[Keleustes Sandbox](https://www.vulnes.is/features/keleustes-sandbox) is the hosted side of Keleustes: Belai on an isolated machine run by Vulnesis, built from a reproducible Nix image with published SBOMs, for teams that would rather not host Belai themselves.

### Rego rule packs

Every rule is plain OPA/Rego, with no proprietary DSL. Load any pack with the CLI `--rule` flag.

[community-rules](https://github.com/Vulnesis/community-rules) ·
[sast-rule-evals](https://github.com/Vulnesis/sast-rule-evals) ·
[opa-aquasecurity-trivy](https://github.com/Vulnesis/opa-aquasecurity-trivy) ·
[opa-checkmarx-kics](https://github.com/Vulnesis/opa-checkmarx-kics) ·
[opa-fugue-regula](https://github.com/Vulnesis/opa-fugue-regula) ·
[opa-snyk-labs-iac](https://github.com/Vulnesis/opa-snyk-labs-iac) ·
[opa-cds-aws-tf](https://github.com/Vulnesis/opa-cds-aws-tf) ·
[opa-cigna-tf](https://github.com/Vulnesis/opa-cigna-tf) ·
[opa-gosec](https://github.com/Vulnesis/opa-gosec) ·
[opa-py-ruff](https://github.com/Vulnesis/opa-py-ruff)

### Libraries and install channels

| Repository | What it is |
|---|---|
| [malscan-engine](https://github.com/Vulnesis/malscan-engine) | The Go module behind malscan: four detector families that read installed dependency bytes and return explainable verdicts. |
| [vdb-cyclonedx](https://github.com/Vulnesis/vdb-cyclonedx) | A Go parser and builder for CycloneDX 1.2 to 1.7, used wherever Vulnesis reads or writes an SBOM, CBOM or AI-BOM. |
| [tea-insights](https://github.com/Vulnesis/tea-insights) | The data layer behind TEA Insights, where every count is labelled with the CEL predicate that produced it. |
| [vdb-openapi](https://github.com/Vulnesis/vdb-openapi) | One reader for Swagger 2.0, OpenAPI 3.0 and 3.1, with route keys, diff, lint and a robustness scorer. |
| [vdb-hostprobe](https://github.com/Vulnesis/vdb-hostprobe) | Host detection shared by the CLI and Belai: OS release, machine key, platform and installed tools. |
| [sca-manifest-fixtures](https://github.com/Vulnesis/sca-manifest-fixtures) | Real manifests and lockfiles for more than 30 package managers, the fixtures the SCA scanner is tested against. |
| [config-schemas](https://github.com/Vulnesis/config-schemas) · [platform-iac-examples](https://github.com/Vulnesis/platform-iac-examples) | JSON Schemas for every Platform IaC kind, and reference configuration for each as Terraform and YAML. |
| [terraform-provider-resolve](https://github.com/Vulnesis/terraform-provider-resolve) | The Terraform and OpenTofu provider, one resource per kind. |
| [terraform-vulnesis-aws-onboarding](https://github.com/Vulnesis/terraform-vulnesis-aws-onboarding) · [terraform-vulnesis-aws-siem-shipping](https://github.com/Vulnesis/terraform-vulnesis-aws-siem-shipping) | Terraform modules that connect an AWS account and ship its logs to Guardian. |
| [homebrew-tap](https://github.com/Vulnesis/homebrew-tap) · [scoop-bucket](https://github.com/Vulnesis/scoop-bucket) | The install channels for macOS, Linux and Windows, with every formula and manifest public. |

## Install

```bash
curl -fsSL https://cli.vulnes.is/install.sh | sh   # auto-detects OS and arch, verifies checksums
brew install vulnetix/tap/vulnetix                 # macOS and Linux
scoop install vulnetix                             # Windows
nix profile install github:Vulnesis/cli            # Nix
go install github.com/vulnetix/cli/v3@latest       # Go

vulnetix scan                                      # every scanner, from the project root
```

In GitHub Actions: `uses: Vulnesis/cli@v3`. Authentication is optional, and `vulnetix auth login` raises your rate limits with a free Community key.

## Free

The Community tier needs no account.

| | What you get |
|---|---|
| [Browser Plugin](https://www.vulnes.is/features/browser-plugin) | Vulnerability identifiers on any page become live: hover for the record, or open a sidebar of every identifier on the tab. 31 identifier schemes in Chromium browsers and Firefox, detected locally. |
| [VS Code Plugin](https://www.vulnes.is/features/vscode-plugin) | Vulnerable dependencies, insecure code, leaked secrets, container and infrastructure misconfiguration on the line that causes them. Scanning runs locally, in VS Code and its forks. |
| [Vulnerability Database](https://www.vulnes.is/vdb) | 150+ vulnerability databases in one normalised, enriched API, with exploit intelligence, fix paths, package risk and EPSS scoring. |
| [Vendor Patch Archive](https://www.vulnes.is/articles/vendor-patching-archives) | Twelve vendor patching archives, month by month, with CSAF and VEX downloads where the vendor provides them and KEV, EPSS and proof-of-concept data on every advisory. |
| [Malware STIX feeds](https://www.vulnes.is/integrations/stix) | Per-ecosystem STIX 2.1 indicators of malicious domains and URLs, refreshed every 15 minutes, with guides for OpenCTI, MISP, Sentinel, Splunk, Elastic and more. |
| [Malware scanning](https://www.vulnes.is/features/malscan) | A detection engine that runs in process over the dependencies already on disk and reads the installed bytes, not the package name. |
| [Secrets Scanning](https://www.vulnes.is/features/secrets-scanning) | Hardcoded API keys, tokens and private keys across source files, binaries and git history, with 1,000+ built-in Rego rules. |
| [Container Scanning](https://www.vulnes.is/features/container-scanning) | Dockerfile rules, images from Compose, Kubernetes and Helm, root filesystem inspection with no Docker daemon, and an ELF binary inventory. |
| [Code Scanner](https://www.vulnes.is/features/code-scanner) | SCA, SAST, secrets, IaC, container, licence, SBOM and VEX in a single command, across 35+ ecosystems and 55+ manifest formats. |
| [Crypto Inventory (CBOM)](https://www.vulnes.is/articles/announcing-cbom) | `vulnetix cbom` inventories every algorithm, certificate and crypto library and classifies each for post-quantum readiness. CycloneDX 1.7, metadata only. |
| [AI Inventory (AI-BOM)](https://www.vulnes.is/articles/announcing-ai-bom) | `vulnetix aibom` discovers every AI coding agent, SDK and model touching a project and emits a CycloneDX 1.7 AI-BOM. |

## Documentation

Everything is at [docs.vulnes.is](https://docs.vulnes.is/). Each page has a Markdown twin for agents at the same path ending in `.md`.

| | |
|---|---|
| [Platform IaC](https://docs.vulnes.is/platform-iac/) | Vulnesis configuration as code: `vulnetix.com/v1` YAML documents for quality gates, firewall policy, members and connections, reviewed in pull requests. See the [kind catalogue](https://docs.vulnes.is/platform-iac/kinds/catalogue/) and the [Terraform and OpenTofu provider](https://docs.vulnes.is/platform-iac/terraform/). |
| [CLI](https://docs.vulnes.is/cli/) | Install, sign in, run in any CI system, and the commands every product shares. |
| [SCA](https://docs.vulnes.is/sca/) · [SAST](https://docs.vulnes.is/sast/) · [Secrets](https://docs.vulnes.is/secrets/) · [IaC scanning](https://docs.vulnes.is/iac-scanning/) · [Malware](https://docs.vulnes.is/malware/) | One section per scanner, with gates, rule catalogues and output formats. |
| [SBOM, CBOM and AI-BOM](https://docs.vulnes.is/sbom/) · [TEA](https://docs.vulnes.is/tea/) | CycloneDX inventories and the Transparency Exchange API. |
| [Software Factory](https://docs.vulnes.is/software-factory/) | Workflows, agents, hosts and evidence, and the Belai CLI that runs the work. |
| [Keleustes](https://docs.vulnes.is/keleustes/) | The desktop app: install, connect Belai hosts, every screen and the CLI. Keleustes Sandbox, the hosted machines, is covered in the same section. |
| [Strix](https://docs.vulnes.is/strix/) · [MCP server](https://docs.vulnes.is/mcp-server/) | Vulnesis inside coding agents and any MCP client. |
| [VS Code extension](https://docs.vulnes.is/vscode/) · [Browser extension](https://docs.vulnes.is/browser-extension/) | Editor and browser setup. |
| [VDB API](https://docs.vulnes.is/vdb-api/) | Authentication, rate limits and every v2 route. |

## Resources

- [Our Mission](https://www.vulnes.is/mission): vulnerability data quality has declined and every security tool is downstream of it. We reconcile 150+ sources and publish the result on open standards anyone can read.
- [Research Lab](https://www.vulnes.is/articles): research on exploit intelligence, disclosure trends, SBOM, AI coding agents and AppSec.
- [Blog Archive](https://www.vulnes.is/articles/archive): every post, by date.
- [Vulnesis KEV](https://www.vulnes.is/articles/vulnetix-kev): CVEs with corroborated exploitation signals that are not yet on the CISA, ENISA or VulnCheck lists.
- [Malware Intel](https://www.vulnes.is/articles/malware-intelligence): the supply-chain malware campaigns we track and the threat actors behind them, with indicators of compromise.
- [Exploit Intel](https://www.vulnes.is/articles/exploit-intelligence-signals): a seven-tier view of exploit data, from social mentions to KEV listings to EPSS predictions.
- [CRIT Validator](https://crit.vulnes.is/validator/): check a CRIT record against the draft specification.
- [Developers' Triage Guide](https://0x73746f66.github.io/vuln-coordinator/): how to triage a vulnerability report as a developer.

---

<p align="center">
  <a href="mailto:support@vulnes.is">support@vulnes.is</a> ·
  <a href="https://discord.gg/AjRacqqNWX">Community Discord</a> ·
  <a href="https://www.vulnes.is/vdp">Vulnerability disclosure</a> ·
  <a href="https://www.vulnes.is/.well-known/security.txt">security.txt</a>
</p>
