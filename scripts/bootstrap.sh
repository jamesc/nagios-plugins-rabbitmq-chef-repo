#!/bin/bash
#
# Some vagrant bootstrap steps
#

if [ -z "$(grep open-source-chef.opscode.piab /etc/hosts)" ] ; then
  echo "33.33.33.10 open-source-chef.opscode.piab" >> /etc/hosts
  echo "33.33.33.10 api.opscode.piab" >> /etc/hosts
  echo "33.33.33.10 manage.opscode.piab" >> /etc/hosts
fi

