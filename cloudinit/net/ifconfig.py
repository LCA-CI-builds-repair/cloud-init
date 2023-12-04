# This file is part of cloud-init. See LICENSE file for license information.

import logging

LOG = logging.getLogger(__name__)


def available(target=None):
    expected = ["ifconfig"]
    search = ["/sbin"]
    if not subp.which(expected, search=search, target=target):
        return False
    return True
