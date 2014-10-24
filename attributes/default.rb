case platform
when "centos"

    # System account info
    default[:galaxy-toolshed][:user]       = "galaxy"
    default[:galaxy-toolshed][:group]      = "galaxy"
    default[:galaxy-toolshed][:home]       = "/usr/local/galaxy"
    default[:galaxy-toolshed][:shell]      = "/bin/bash"
    default[:galaxy-toolshed][:password]   = nil

    # path to galaxy systems
    default[:galaxy-toolshed][:reference]  = "release_2014.08.11"
    default[:galaxy-toolshed][:path]       = "#{galaxy[:home]}/galaxy-dist"

    # local tool shed service
    default[:galaxy-toolshed][:hgweb_conf] = "./"
    default[:galaxy-toolshed][:config]     = "tool_shed_wsgi.ini"
    default[:galaxy-toolshed][:kicker]     = "run_tool_shed.sh"
    default[:galaxy-toolshed][:pid]        = "#{galaxy[:path]}/tool_shed_webapp.pid"
    default[:galaxy-toolshed][:log]        = "#{galaxy[:path]}/tool_shed_webapp.log"
    default[:galaxy-toolshed][:port]       = "9009"
    default[:galaxy-toolshed][:admin]      = "toolshed-admin"
    default[:galaxy-toolshed][:domain]     = "foo.baa"

    default[:galaxy-toolshed][:initfile]   = "/etc/init.d/galaxy-toolshed"  if( platform_version.to_f < 7.0)

end

# repository 
default[:galaxy-toolshed][:repository]    = "https://bitbucket.org/galaxy/galaxy-dist/"

default[:galaxy-toolshed][:proxy_set]     = false
