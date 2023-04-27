#!/bin/bash

set -eo pipefail

git cherry-pick 744eae2b6f1 `# UPSTREAM: 74956: apiserver: switch authorization to use protobuf client` \
                3eceae03d56 `# UPSTREAM: 84466: gce: ensureInternalInstanceGroups: reuse instance-groups for internal load balancers` \
                b38fde5f258 `# UPSTREAM: 93286: wait for apiservices on startup` \
                0f2ee15d446 `# UPSTREAM: <carry>: filter out CustomResourceQuota paths from OpenAPI` \
                7e0b3ae5332 `# UPSTREAM: <carry>: patch aggregator to allow delegating resources` \
                270a73f84be `# UPSTREAM: <carry>: remove apiservice from sync in CRD registration when it exists` \
                73542534279 `# UPSTREAM: <carry>: hardcoded restmapper with a few entries to rebootstrap SDN when SDN is down` \
                9f4b700a2f5 `# UPSTREAM: <carry>: Extend NodeLogQuery feature` \
                1f241a0b783 `# UPSTREAM: <carry>: kube-controller-manager: add service serving cert signer to token controller` \
                6ad599009ad `# UPSTREAM: <carry>: kube-controller-manager: allow running bare kube-controller-manager` \
                27cc8788eca `# UPSTREAM: <carry>: kube-controller-manager: exclude some origin resources from quota` \
                3cb31e22669 `# UPSTREAM: <carry>: kube-apiserver: add our immortal namespaces directly to admission plugin` \
                65ae1553b87 `# UPSTREAM: <carry>: kube-apiserver: allow injection of kube-apiserver options` \
                58e8e3b679a `# UPSTREAM: <carry>: kube-apiserver: priorize some CRD groups over others` \
                73cc4892c5d `# UPSTREAM: <carry>: Always test PDB's during service upgrade test` \
                8abfd524e89 `# UPSTREAM: <carry>: openshift-kube-apiserver: add kube-apiserver patches` \
                85f4c61fb30 `# UPSTREAM: <carry>: kube-apiserver: wire through isTerminating into handler chain` \
                20650a99250 `# UPSTREAM: <carry>: create termination events` \
                7a47b20814e `# UPSTREAM: <carry>: bootstrap-rbac-policy: move over .well-known rules` \
                07a404e6489 `# UPSTREAM: <carry>: warn only about unknown feature gates` \
                1dbe5cc4347 `# UPSTREAM: <carry>: disable AES24, not supported by FIPS` \
                c1326064042 `# UPSTREAM: <carry>: bump nodes ready timeout` \
                3d725d84d38 `# UPSTREAM: <carry>: Remove excessive e2e logging` \
                6d47dd4b866 `# UPSTREAM: <carry>: conditionally fill the UserAgent from the currently running test` \
                5fd7abc7ad8 `# UPSTREAM: 90452: refactor/improve CRD publishing e2e tests in an HA setup` \
                1a02ab22004 `# UPSTREAM: <carry>: Add OpenShift tooling, images, configs and docs` \
                ce1d43c6af5 `# UPSTREAM: <carry>: export HandleFlags` \
                96455b1d3a6 `# UPSTREAM: <carry>: noderestrictions: add node-role.kubernetes.io/* to allowed node labels` \
                4dcff4f2f7b `# UPSTREAM: <carry>: Skip unit tests incompatible with openshift ci` \
                224dfb61c21 `# UPSTREAM: <carry>: kube-apiserver: ignore SIGTERM/INT after the first one` \
                1f05c80bc95 `# UPSTREAM: <carry>: use hardcoded metrics scraping authorizer for delegated apiservers` \
                966426b40f0 `# UPSTREAM: <carry>: allow kubelet to self-authorize metrics scraping` \
                ca080d595df `# UPSTREAM: <carry>: provide events, messages, and bodies for probe failures of important pods` \
                51eb9e5ea9b `# UPSTREAM: <carry>: allows for switching KS to talk to Kube API over localhost` \
                827f2aa3272 `# UPSTREAM: <carry>: add management support to kubelet` \
                1e5fb68f523 `# UPSTREAM: <carry>: APIRequestCount Handler` \
                ecefdb10e97 `# UPSTREAM: <carry>: allows for switching KCM to talk to Kube API over localhost` \
                5012c33e9f0 `# UPSTREAM: <carry>: Ensure service ca is mounted for projected tokens` \
                f9042b9f8c1 `# UPSTREAM: <carry>: apiserver: add system_client=kube-{apiserver,cm,s} to apiserver_request_total` \
                dccf9707e30 `# UPSTREAM: <carry>: emit event when readyz goes true` \
                2e2ecaa82d9 `# UPSTREAM: <carry>: crd: add ClusterOperator condition message table column` \
                8470ee5e005 `# UPSTREAM: <carry>: only chown if non-windows machine` \
                1ebba7271e0 `# UPSTREAM: <carry>: openshift's kube-apiserver is in openshift-kube-apiserver` \
                93ecd3b8d67 `# UPSTREAM: 103612: tolerate additional, but congruent, events for integration test` \
                30ddcaef540 `# UPSTREAM: <carry>: add a way to inject a vulnerable, legacy service-ca.crt for migration compatibility` \
                b82a002868d `# UPSTREAM: <carry>: skip posting failures to aggregated APIs to avoid getting false positives until the server becomes ready` \
                664f3d70d44 `# UPSTREAM: <carry>: Revert "Remove Endpoints write access from aggregated edit role"` \
                bc884016e24 `# UPSTREAM: <carry>: send Retry-After when not ready with a caller opt in` \
                d5acd3f5a02 `# UPSTREAM: <carry>: add max_housekeeping_interval` \
                c17e4a573c5 `# UPSTREAM: <carry>: sets X-OpenShift-Internal-If-Not-Ready HTTP Header for GC and Namespace controllers` \
		aaef0190f32 `# UPSTREAM: <carry>: Release lock on KCM and KS termination THIS IS THE FURTHEST I COULD MOVE THIS TO` \
                18319ea54a9 `# UPSTREAM: <carry>: use console-public config map for console redirect` \
                7b37438a392 `# UPSTREAM: <carry>: e2e-framework: don't autosync PodSecurity labels` \
                40069cb7f20 `# UPSTREAM: <carry>: fix [sig-auth] ServiceAccounts no secret-based service account token should be auto-generated` \
                e473b9d8bad `# UPSTREAM: <carry>: optionally enable retry after until apiserver is ready` \
                ba2e40ac564 `# UPSTREAM: <carry>: make the PSA workload admission warnings honor the changes that SCC will eventually make to the pod` \
                04f6c20a2af `# UPSTREAM: <carry>: disable failing dnsPolicy test` \
                bec2329cc70 `# UPSTREAM: <carry>: kubelet: fix readiness probes with pod termination` \
                b0ac4b40a95 `# UPSTREAM: <carry>: PSa metrics: log platform namespaces in audit denies` \
                b9869f080f8 `# UPSTREAM: 115328: annotate early and late requests` \
                c8f3d637b18 `# UPSTREAM: <carry>: disable load balancing on created cgroups when managed is enabled` \
                fa445e47233 `# UPSTREAM: <carry>: Create minimal wrapper needed to run k8s e2e tests` \
                94bd995ce92 `# UPSTREAM: <carry>: add shutdown annotation to response header` \
                61cae728d48 `# UPSTREAM: 117242: vendor: bump runc to 1.1.6` \
                3ae4d991e59 `# UPSTREAM: 117310: kube-aggregator: correctly use client-go TLS cache with custom dialer` \
                becddf4972e `# UPSTREAM: <carry>: don't fail integration due to too many goroutines` \
                2e3efb050fb `# UPSTREAM: <carry>: APISelfSubjectReview: only test v1beta1 API` \
		18598a6dff9 `# UPSTREAM: <carry>: Export internal code from k8s.io/apimachinery/pkg/util/managedfields` \

# This is RHEL 9, maybe I dont need this at all
# 3038519f5b5 `# UPSTREAM: <carry>: Add OpenShift tooling, images, configs and docs. RHEL9`


# squash kubelet: fix readiness probes
#                e67b1f4fc35 `# UPSTREAM: <carry>: kubelet: fix readiness probes with pod termination` \


# squash release lock
#                cd0d7542982 `# UPSTREAM: <carry>: Release lock on KCM and KS termination` \
