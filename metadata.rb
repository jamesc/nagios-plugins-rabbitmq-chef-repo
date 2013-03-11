maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures rabbitmq_service"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
name             "rabbitmq_service"

depends "git"
depends "rabbitmq"
depends "nagios"
