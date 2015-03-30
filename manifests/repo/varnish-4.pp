# = Class: yum::repo::varnish
#
# This class installs the varnish 3.0 repo
#
class yum::repo::varnish-4 {

  yum::managed_yumrepo { 'varnish-4':
    descr          => 'Varnish 4.0 for Enterprise Linux - $basearch',
    baseurl        => "http://repo.varnish-cache.org/redhat/varnish-4.0/el${::operatingsystemmajrelease}/\$basearch",
    enabled        => 1,
    gpgcheck       => 0,
    failovermethod => 'priority',
    # gpgkey       => 'http://yum.theforeman.org/RPM-GPG-KEY-VARNISH',
    priority       => 26,
  }

}
