#!/usr/bin/env bash
#
# Development entrypoint
#

# Activate user's virtualenv
source /edx/app/edxapp/venv/bin/activate

# Override default lms root_urls
ln -sf /config/lms/root_urls.py /edx/app/edxapp/edx-platform/lms/

exec "$@"
