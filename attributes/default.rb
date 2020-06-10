default['audit']['fetcher'] = 'chef-server'
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['profiles'] =
  case node['platform']
  when 'centos'
    default['audit']['profiles'] = [
      {
        name: 'DevSec Linux Patch Benchmark',
        compliance: 'workstation-1/linux-patch-baseline',
      },
    ]
  when 'ubuntu'
    default['audit']['profiles'] = [
      {
        name: 'DevSec Linux Patch Benchmark',
        compliance: 'workstation-1/linux-patch-baseline',
      },
    ]
  when 'windows'
    default['audit']['profiles'] = [
      {
        name: 'DevSec Windows Patch Benchmark',
        compliance: 'workstation-1/windows-patch-baseline',
      },
    ]
  when 'redhat'
    default['audit']['profiles'] = [
      {
        name: 'DevSec Linux Patch Benchmark',
        compliance: 'workstation-1/linux-patch-baseline',
      },
    ]
  end