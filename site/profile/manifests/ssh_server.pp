class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                ensure => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDjniJnOmwpXBDBSNaXCOwayu7Cr19lBuSvaZHDMthzcbhCwOwjozmOtiSIgCRT+9H0VX03CiYGIhw+4j1tf68nbF6TwfPJTld0Xjtfgr1HvoRRTSuEZhoCyBdYxMC6K93p5EoAUhqN1cb8ydTEp6J8Yl6GAXo39W+2SvdZdLV+TLaXLmu0FI+1EnvkfbuhZu7NT8/9j8U/6Yv57jvFwzNexUavPAdTEkK+AsDWl4e+ijiNigdHun01869MFf6y7EtBelD6g5uORGDaCTZmUYVIVT4wbckaS6MzZObdeLsQg2C9QKz19lD1RN2Z/wbX/i6Pt3syMk0UdloV4c0GpwLf',
        }
}
