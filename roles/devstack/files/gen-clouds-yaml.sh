#!/bin/bash

source /opt/stack/devstack/openrc admin admin

cat >/opt/stack/.config/openstack/clouds.yaml <<EOF
clouds:
  devstack-admin:
    auth:
      auth_url: $OS_AUTH_URL
      username: $OS_USERNAME
      password: $OS_PASSWORD
      project_name: $OS_PROJECT_NAME
      project_domain_name: ${OS_PROJECT_DOMAIN_NAME:-Default}
      user_domain_name: ${OS_USER_DOMAIN_NAME:-Default}
    region_name: ${OS_REGION_NAME:-RegionOne}
    identity_api_version: ${OS_IDENTITY_API_VERSION:-3}
    interface: ${OS_INTERFACE:-public}
EOF
