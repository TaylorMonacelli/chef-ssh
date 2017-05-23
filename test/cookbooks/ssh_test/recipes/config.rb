# Author: Tejay Cardon

include_recipe 'ssh'

user 'vagrant' do
  manage_home true
  home '/home/vagrant'
  action %i[create manage]
end

directory '/home/vagrant/.ssh' do
  mode 0o0700
end

ssh_config 'github.com' do
  options 'User' => 'git', 'IdentityFile' => '/tmp/gh'
end

ssh_config 'github.com' do
  options 'User' => 'git', 'IdentityFile' => '/tmp/gh'
  user 'vagrant'
end

group 'other_group'
user 'someone'

ssh_config 'something else' do
  host 'test.io'
  options 'User' => 'testuser', 'DummyKey' => 'I was allowed'
  user  'someone'
  group 'other_group'
  path  '/some/random/path/config'
end
