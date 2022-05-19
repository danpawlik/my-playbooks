# Intro

Simple playbooks that helps to deploy some part of services
used in rdoproject.org, softwarefactory-project.io or
OpenStack ci-log-processing project.

## How to use

Clone git repository:

```shell
git clone --recursive https://github.com/danpawlik/my-playbooks my-playbooks
# or
git clone --recurse-submodules https://github.com/danpawlik/my-playbooks my-playbooks
```

Update git submodule (optional):

```shell
git submodule update
```

Run playbook:

```shell
ansible-playbook -i inventory/inventory playbooks/some-playbook.yml
# or
ansible-playbook -i inventory/inventory --limit quay.dev playbooks/some-playbook.yml
```

To run softwarefactory simple deployment:

```shell
ansible-playbook -i inventory/inventory -e buildset_artifacts_url='<link to the sf-rpm-build buildset dir>/check/sf-rpm-build/150cf6b/buildset' playbooks/sf-ci/functional-minimal.yaml
# for example
ansible-playbook -i inventory/inventory -e buildset_artifacts_url='https://softwarefactory-project.io/logs/45/25045/2/check/sf-rpm-build/150cf6b/buildset' playbooks/sf-ci/functional-minimal.yaml
```
