class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBL0qRVTV4alY4xye04enilPO3bUk2HcxwRhJwdFBePl/d/9dDDjEk9ZtU/qRGQiPV3Cvs67d0XzQDfMysBfSlULDu/rSp7xy4dqbZJvWZ15lGAdkCRnwgbhaKMcgHTw13DlAuN2YUweJ5r2YiSnsgJ0g0pgRIOKXDqiYqtQvaZJYdB06J/nvbN6XTd/oa53yp1tia/tgNG5H++M6slzrsnDWoC7BeHambrecyFWnrwy8r50nnHQrUU83qGOIxJv+ILVPyIPacYJr6sJsWH6wy2vg4H2+HfD//s82EVMkbkgbItpXgJ61GcZ24byrEykkHe33ki3/SgS5/9zFQl1ez',
	}  
}
