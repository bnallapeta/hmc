# This config file is used by openstack-nuke to clean up named resources associated
# with a specific managed cluster across an OpenStack account. CLUSTER_NAME is
# typically the metadata.name of the ManagedCluster.
#
# Usage:
# - 'CLUSTER_NAME=foo OPENSTACK_REGION=RegionOne OPENSTACK_AUTH_URL=http://auth.url make dev-openstack-nuke'

regions:
  - ${OPENSTACK_REGION}

resources:
  includes:
    - Instance
    - Volume
    - Network
    - Subnet
    - Router
    - LoadBalancer
    - FloatingIP
