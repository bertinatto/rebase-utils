#!/bin/bash

export GOPROXY=direct
hack/pin-dependency.sh github.com/onsi/ginkgo/v2=github.com/openshift/onsi-ginkgo/v2 v2.9-openshift-4.14
hack/pin-dependency.sh github.com/openshift/api=github.com/bertinatto/api bump-k8s-1.27
hack/pin-dependency.sh github.com/openshift/client-go=github.com/bertinatto/client-go bump-k8s-1.27
hack/pin-dependency.sh github.com/openshift/apiserver-library-go=github.com/bertinatto/apiserver-library-go bump-k8s-1.27
hack/pin-dependency.sh github.com/openshift/library-go=github.com/bertinatto/library-go bump-k8s-1.27
