# Openstack Auth Params
ADMIN_USER: "itcenter"
ADMIN_TENANT_NAME: "itcenterlab"
OS_IDENTITY_API_VERSION: "3"
#KEYSTONE_ENDPOINT: "osp.example.com"
KEYSTONE_ENDPOINT: "192.168.174.203"
KEYSTONE_ADMIN_PORT: "5000"
project: "itcenterlab"

ssh_key_name: "test-key"
keypair_dir: "/var/lib/awx/.ssh"
keypair_file: "{{ keypair_dir }}/id_rsa"

# Heat Template Params
code_dest_dir: "/tmp/ansible-cf"
heat_image: "Centos7"
heat_flavor: "m1.small"
heat_template: "template2.yml.j2"
stack_tag: "osp"
stack_name: "test-stack"
vm_name: instance1

# TODO: dynamic get the network
net_id: 7ce98844-b1a3-4d96-998d-d32ac0080a4c
net_name: provider207
fip_pool: provider207
