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
