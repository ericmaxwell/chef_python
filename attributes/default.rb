
default['python']['install_method'] = 'package'

if default['python']['install_method'] == 'package'
  case node['platform']
  when "smartos"
    default['python']['prefix_dir'] = '/opt/local'
  else
    default['python']['prefix_dir']         = '/usr'
  end
else
  default['python']['prefix_dir']         = '/usr/local'
end

default['python']['binary'] = "#{node['python']['prefix_dir']}/bin/python"

default['python']['url'] = 'http://www.python.org/ftp/python'
default['python']['version'] = '2.7.7'
default['python']['checksum'] = '7f49c0a6705ad89d925181e27d0aaa025ee4731ce0de64776c722216c3e66c42'
default['python']['configure_options'] = %W{--prefix=#{node['python']['prefix_dir']}}
default['python']['make_options'] = %W{install}

default['python']['pip_location'] = "#{node['python']['prefix_dir']}/bin/pip"
default['python']['virtualenv_location'] = "#{node['python']['prefix_dir']}/bin/virtualenv"
default['python']['setuptools_version'] = nil # defaults to latest
default['python']['virtualenv_version'] = nil

