name             'zsWebServer'
maintainer       'ZS Associates'
maintainer_email 'test@test.com'
license          'All rights reserved'
description      'Installs/Configures a Web Server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "windows", "~> 1.11.0"
depends "bginfo", ">= 0.0.6"
depends "minitest-handler", "~> 1.1.2"
#depends "ms_dotnet45"
#depends "iis", "~> 1.5.4"