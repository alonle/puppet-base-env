# vagrant box seems to miss this group
group{ 'puppet': ensure  => present }

# when not used within vagrant context this should be set to the main user
$username = 'vagrant'
$scm_user = 'narkisr'
$scm_email = 'narkisr@gmail.com'

include git
include zsh
include oh_my_zsh
include local_security
include build_essential
include z
include vim
include vim-configuration
include rvm

rvm::system_user { $username: }

if($rvm_installed == "true"){
  rvm_system_ruby {
    'ruby-1.9.2':
      ensure => 'present',
      default_use => true;
  }
}
