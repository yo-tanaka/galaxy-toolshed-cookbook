name             'galaxy-toolshed'
maintainer       "RIKEN ACCC"
maintainer_email "yo-tanaka@riken.jp"
license          "Apache 2.0"
description      "Installs and Configures for galaxy-toolshed"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

#supports          centos-6.5
%w{ python mercurial yum vim }.each do |cb|
    depends  cb
end
