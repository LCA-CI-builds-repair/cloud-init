# This file is part of cloud-init. See LICENSE file for license information.

from cloudinit.distros import rhel


class Distro(rhel.Distro):
    # Centos 7 has DHCP lease at the following location:
    # /var/lib/dhclient/dhclient-<uuid>-<iface_name>.lease
    # Centos
    dhclient_lease_directory = "/var/lib/dhclient"
    dhclient_lease_file_regex = r"dhclient-[\w-]+\.lease"
