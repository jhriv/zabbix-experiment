# -*- mode: ruby -*-
# vi: set ft=ruby :

# List guests here, one per record.

GUESTS = [
  { name: 'zabbix',  box: 'centos/7', ip: 'dhcp', ports: [{ guest: 80, host: 8000}] },
  { name: 'web-1',   box: 'centos/7', ip: 'dhcp', ports: [{guest: 80, host: 8008}] },
  #{ name: 'web-1', box: 'centos/7', ip: '2' },
  #{ name: 'web-2', ip: '192.168.1.3' },
  #{ name: 'db-1' },
  #{ name: 'app', sync: true, ports: [ 8088, { guest: 80, host: 8000 } ] },
  #{ name: 'datastore', box: 'ubuntu/bionic64', needs_python: false },

  #{
  #  name: 'example',
  #  box: 'ubuntu/bionic64',
  #  cpus: 2,
  #  gui: false,
  #  ip: 'dhcp',
  #  memory: 1024,
  #  needs_python: false,
  #  ports: 8088, # Integer, single port
  #  ports: [ 8088, 443, 53 ], # Array, multiple ports
  #  ports: [ { guest: 8088, host: 8000, auto_correct, true, id: 'app', protocol: 'tcp' } ], # Hash
  #  sync: false,
  #  update: false,
  #}
]

# PROVIDER = 'parallels'
# PROVIDER = 'virtualbox'

# GUESTS:
#   name: (REQUIRED) Name of the box
#   box: (optional) Box to build from. Default ubuntu/bionic64 or $DEFAULT_BOX
#   cpus: (optional) Number of CPUs. Default as per box (usually 1)
#   gui: (optional) Start windowed? Default false
#   ip: (optional) IP address for local networking. Can be full dotted quad,
#       the last octet, which will be appended to the IP_NETWORK environmental
#       variable, or 'dhcp'. Default none
#   memory: (optional) Ram in MB. Default as per box (usually 1024)
#   needs_python: (optional) Install python packages? Default true
#       (Debian/Ubuntu only)
#   ports: (optional) Array of ports to forward. Can either be integers, or a
#       hash with supported options (see below).
#       Default none (only ssh port will be forwarded)
#   sync: (optional) Should /vagrant be mounted? Default false
#   update: (optional) Update all pacakges? Default false

# PROVISIONERS
#   ansible: Playbook (or array of playbooks) to supply to ansible provisioner
#   file: Filename (or array of filenames) to supply to file provisioner
#   shell: Script (or array of scripts) to supply to shell provisioner

# PROVIDER:
#   Select the provider to use. This is a global, it can be set only once per
#   vagrant up invocation. Command line will override this value.
#   Default virtualbox or $VAGRANT_DEFAULT_PROVIDER

# If there are multiple guests, the first one will be marked "primary"


# ports: supported options:
#   guest: (REQUIRED) guest port
#   auto_correct: (optional) Adjust port in case of collision? Default true
#   guest_ip: (optional) Default nil
#   host_ip: (optional) Default nil
#   host: (optional) host port. Default guest port
#   id: (optional) Friendly name. Default nil
#   protocol: (optional) Default nil
