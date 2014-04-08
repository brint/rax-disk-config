default['rax']['disk_config']['volume_group'] = 'vg00'
default['rax']['disk_config']['physical_volume'] = '/dev/xvde1'
default['rax']['disk_config']['logical_volume'] = 'data'
default['rax']['disk_config']['size'] = '100%VG'
default['rax']['disk_config']['filesystem'] = 'xfs'
default['rax']['disk_config']['mount_point'] = '/mnt/volume'
default['rax']['disk_config']['mount_options'] = 'rw,noatime,nodiratime'
case node['platform_family']
when 'debian'
  default['rax']['disk_config']['packages'] = ['xfsprogs']
end
