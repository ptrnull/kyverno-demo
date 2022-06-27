# Kyverno demo

Kyverno is a policy engine designed for Kubernetes. With Kyverno, policies are managed as Kubernetes resources and no new language is required to write policies. 

This allows using familiar tools such as kubectl, git, and kustomize to manage policies.

Kyverno policies can validate, mutate, and generate Kubernetes resources plus ensure OCI image supply chain security. The Kyverno CLI can be used to test policies and validate resources as part of a CI/CD pipeline.

More info: https://kyverno.io/

This repo contains some scripts to automate a basic installation and uninstallation of the Kyverno software under Kubernetes for demo testing purposes.

It has been tested on Kubernetes and cri-o 1.24 running under Centos 8.5.

* install.sh: script to install Kyberno (latest version)
* uninstall.sh: script to uninstall Kyberno (also removes the mutating and validating webhoks)
* 00-disallow-default-ns.yaml: policy to test the validation feature from Kyverno (dissallows the use of the default ns)
* 00-test-disallow-default-ns.sh: script to fail againts the previous validation (forbids the use of the default ns)
* 00-test-disallow-default-ns-fixed.sh: script to test the previous validation (allows the creation of a pod in a different ns)
* 01-generating-add-ns-quota.yaml: policy to test the generation feature from Kyverno (add quota to a ns)
* 01-test-generating-add-ns-quota.sh: scrip to test the previous generation feature (shows the quota)
* 02-mutate-add-creator.yaml: policy to test the mutation feature from kyverno (adds a new label including the user of the creator into a namespace)
* 02-test-mutate-add-creator.sh: script to test the previous mutation feature (shows the label)

