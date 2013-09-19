Overview
========

This is a chef repository with vagrant and berkshelf config used for
spinning up a rabbitmq server to test the nagios-plugins-rabbitmq
package.

Configuration
=============

This assumes you use Hosted Chef -
(http://www.opscode.com/hosted-chef/) and wants the following
environment variables set:

* `OPSCODE_ORGNAME`: The organization name on hosted chef to use.

* `OPSCODE_USER`:  You can set this if your username on Hosted Chef is
  different from `$USER`

Running
=======

To setup a VM, first do a `bundle install` and then it's just a matter
of doing a

    vagrant up

This should upload the cookbook dependencies and provision a rabbitmq.
A checkout of the `nagios-plugins-rabbitmq` repository is dropped into
/opt


nagiosadmin webui password is nagiosadmin
