name             'rails'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures rails'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
 
depends "nginx"
depends "runit"
depends 'build-essential'
depends 'users'
depends 'rbenv'
depends 'nginx'
depends 'mysql'
depends 'database'
depends 'nodejs'
depends 'php'
depends 'phpmyadmin'
