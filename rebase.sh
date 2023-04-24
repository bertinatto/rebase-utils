#!/bin/bash

set -eo pipefail

git cherry-pick e912bf4e9e8 `# UPSTREAM: 74956: apiserver: switch authorization to use protobuf client` \
                15242daaa7d `# UPSTREAM: 84466: gce: ensureInternalInstanceGroups: reuse instance-groups for internal load balancers` \
                c79e167138e `# UPSTREAM: 93286: wait for apiservices on startup` \
                536b11145a1 `# UPSTREAM: <carry>: filter out CustomResourceQuota paths from OpenAPI` \
                28db11e9085 `# UPSTREAM: <carry>: patch aggregator to allow delegating resources` \
                0fe136b5805 `# UPSTREAM: <carry>: remove apiservice from sync in CRD registration when it exists` \
                ebac9fd9cff `# UPSTREAM: <carry>: hardcoded restmapper with a few entries to rebootstrap SDN when SDN is down` \
                6280b0aeb7a `# UPSTREAM: <carry>: Extend NodeLogQuery feature` \
                457e49ae2ea `# UPSTREAM: <carry>: kube-controller-manager: add service serving cert signer to token controller` \
                b59a74ca3a2 `# UPSTREAM: <carry>: kube-controller-manager: allow running bare kube-controller-manager` \
                d58475a13ee `# UPSTREAM: <carry>: kube-controller-manager: exclude some origin resources from quota` \
                e028f35d87b `# UPSTREAM: <carry>: kube-apiserver: add our immortal namespaces directly to admission plugin` \
                76a11255d79 `# UPSTREAM: <carry>: kube-apiserver: allow injection of kube-apiserver options` \
                50cfe7cb3e8 `# UPSTREAM: <carry>: kube-apiserver: priorize some CRD groups over others` \
                502c0c01b5b `# UPSTREAM: <carry>: Always test PDB's during service upgrade test` \
                9c930027752 `# UPSTREAM: <carry>: openshift-kube-apiserver: add kube-apiserver patches` \
                2513afde3d6 `# UPSTREAM: <carry>: kube-apiserver: wire through isTerminating into handler chain` \
                8983403fc2a `# UPSTREAM: <carry>: create termination events` \
                96998498941 `# UPSTREAM: <carry>: bootstrap-rbac-policy: move over .well-known rules` \
                3b8b467c938 `# UPSTREAM: <carry>: warn only about unknown feature gates` \
                276a5c453ea `# UPSTREAM: <carry>: disable AES24, not supported by FIPS` \
                fa1aff3e028 `# UPSTREAM: <carry>: bump nodes ready timeout` \
                358d2fba2dd `# UPSTREAM: <carry>: Remove excessive e2e logging` \
                826ac0a3795 `# UPSTREAM: <carry>: conditionally fill the UserAgent from the currently running test` \
                03ce9ad0a41 `# UPSTREAM: 90452: refactor/improve CRD publishing e2e tests in an HA setup` \
                da7ff87894f `# UPSTREAM: <carry>: Add OpenShift tooling, images, configs and docs` \
                a9a70b2faac `# UPSTREAM: <carry>: export HandleFlags` \
                19be2dea330 `# UPSTREAM: <carry>: noderestrictions: add node-role.kubernetes.io/* to allowed node labels` \
                f1e5279c58b `# UPSTREAM: <carry>: Skip unit tests incompatible with openshift ci` \
                964b71b1d4a `# UPSTREAM: <carry>: kube-apiserver: ignore SIGTERM/INT after the first one` \
                74d7e2460ca `# UPSTREAM: <carry>: use hardcoded metrics scraping authorizer for delegated apiservers` \
                bf71f39aeca `# UPSTREAM: <carry>: allow kubelet to self-authorize metrics scraping` \
                55a41baff9e `# UPSTREAM: <carry>: provide events, messages, and bodies for probe failures of important pods` \
                9e58cac04f5 `# UPSTREAM: <carry>: allows for switching KS to talk to Kube API over localhost` \
                c6c232c8d32 `# UPSTREAM: <carry>: add management support to kubelet` \
                d6c3df4611a `# UPSTREAM: <carry>: APIRequestCount Handler` \
                e8e9fbb100e `# UPSTREAM: <carry>: allows for switching KCM to talk to Kube API over localhost` \
                db8e0dc472a `# UPSTREAM: <carry>: Ensure service ca is mounted for projected tokens` \
                7f0838640ed `# UPSTREAM: <carry>: apiserver: add system_client=kube-{apiserver,cm,s} to apiserver_request_total` \
                2a024d67ace `# UPSTREAM: <carry>: emit event when readyz goes true` \
                27e51b1b56a `# UPSTREAM: <carry>: crd: add ClusterOperator condition message table column` \
                fb836387922 `# UPSTREAM: <carry>: only chown if non-windows machine` \
                04bf9a1c715 `# UPSTREAM: <carry>: openshift's kube-apiserver is in openshift-kube-apiserver` \
                e17faac216f `# UPSTREAM: 103612: tolerate additional, but congruent, events for integration test` \
                4ac584ca188 `# UPSTREAM: <carry>: add a way to inject a vulnerable, legacy service-ca.crt for migration compatibility` \
                7a0256ab5bb `# UPSTREAM: <carry>: skip posting failures to aggregated APIs to avoid getting false positives until the server becomes ready` \
                925a5311323 `# UPSTREAM: <carry>: Revert "Remove Endpoints write access from aggregated edit role"` \
                856cda129c4 `# UPSTREAM: <carry>: send Retry-After when not ready with a caller opt in` \
                ca5abd12e9a `# UPSTREAM: <carry>: add max_housekeeping_interval` \
                e153faacee8 `# UPSTREAM: <carry>: sets X-OpenShift-Internal-If-Not-Ready HTTP Header for GC and Namespace controllers` \
                5d21a3c9fba `# UPSTREAM: <carry>: use console-public config map for console redirect` \
                f1c5d26404a `# UPSTREAM: <carry>: e2e-framework: don't autosync PodSecurity labels` \
                0c8d8fd9e8d `# UPSTREAM: <carry>: fix [sig-auth] ServiceAccounts no secret-based service account token should be auto-generated` \
                59f019d00d5 `# UPSTREAM: <carry>: optionally enable retry after until apiserver is ready` \
                b9eddb13f5e `# UPSTREAM: <carry>: STOR-829: Add CSIInlineVolumeSecurity admission plugin` \
                f6d3fffe4f1 `# UPSTREAM: <carry>: make the PSA workload admission warnings honor the changes that SCC will eventually make to the pod` \
                9366643e69a `# UPSTREAM: <carry>: disable failing dnsPolicy test` \
                39c622fc5f1 `# UPSTREAM: <carry>: update hyperkube image version` \
                eaf18794972 `# UPSTREAM: <carry>: kubelet: fix readiness probes with pod termination` \
                2b75bab93e0 `# UPSTREAM: <carry>: add icsp,idms,itms validation reject creating icsp with idms/itms exist` \
                511c62278e5 `# UPSTREAM: <carry>: node admission plugin for cpu partitioning` \
                dbb413c4ccc `# UPSTREAM: <carry>: PSa metrics: log platform namespaces in audit denies` \
                e244cad68db `# UPSTREAM: 115328: annotate early and late requests` \
		bfaf3c8c778 `# UPSTREAM: <carry>: SCC pod extractor: assume default SA if SA is empty` \
                91cea2aa688 `# UPSTREAM: <carry>: disable load balancing on created cgroups when managed is enabled` \
                903d9b54312 `# UPSTREAM: <carry>: Create minimal wrapper needed to run k8s e2e tests` \
                e6d8533683f `# UPSTREAM: <carry>: Change annotation mechanics to allow injecting testMaps and filter out tests` \
                f6c3074553d `# UPSTREAM: <carry>: Move k8s-specific rules to our fork` \
                767c1d5ca19 `# UPSTREAM: <carry>: add shutdown annotation to response header` \
                a8a639f0040 `# UPSTREAM: 117242: vendor: bump runc to 1.1.6` \
                92baedf9693 `# UPSTREAM: 117310: kube-aggregator: correctly use client-go TLS cache with custom dialer` \
                7a20966f7c5 `# UPSTREAM: <carry>: kubelet: fix readiness probes with pod termination` \
                8f7a7b156e7 `# UPSTREAM: <carry>: kube-controller-manager: allow running bare kube-controller-manager` \
                4bd8df596d8 `# UPSTREAM: <carry>: add management support to kubelet` \
                b2623c54165 `# UPSTREAM: <carry>: add missing generated file` \
                8eb5eef6f6d `# UPSTREAM: <carry>: allows for switching KS to talk to Kube API over localhost` \
                e67b1f4fc35 `# UPSTREAM: <carry>: kubelet: fix readiness probes with pod termination` \
                87e25afbc80 `# UPSTREAM: <carry>: Release lock on KCM and KS termination` \
                0a36215d9ce `# UPSTREAM: <carry>: Release lock on KCM and KS termination` \
                b9b089f4ec8 `# UPSTREAM: <carry>: Add OpenShift tooling, images, configs and docs` \
                1a06a255291 `# UPSTREAM: <carry>: update hyperkube image version` \
                8631deb6af6 `# UPSTREAM: <carry>: kubelet: fix readiness probes with pod termination` \
                750d75ad6e9 `# UPSTREAM: <carry>: apiserver: add system_client=kube-{apiserver,cm,s} to apiserver_request_total` \
                c1564dca890 `# UPSTREAM: <carry>: don't fail integration due to too many goroutines` \
                44d0ad51549 `# UPSTREAM: <carry>: APISelfSubjectReview: only test v1beta1 API` \
                0d4223b07d8 `# UPSTREAM: 103612: tolerate additional, but congruent, events for integration test` \
                2f1991efa7a `# UPSTREAM: <carry>: Create minimal wrapper needed to run k8s e2e tests`

		# 3038519f5b5 `# UPSTREAM: <carry>: Add OpenShift tooling, images, configs and docs. RHEL9`

# TODO
# squash kubelet: fix readiness probes
