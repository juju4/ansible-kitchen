require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
if ENV.has_key?('SERVERSPEC_JUNIT')
  require 'yarjuf'
  RSpec.configure do |c|
      c.formatter = 'JUnit'
  end
end

describe file('/usr/bin/gem') do
  it { should be_executable }
end

describe command('find /var/lib/gems/'), :if => os[:family] == 'debian' do
  its(:stdout) { should match /kitchen-ansible/ }
  its(:exit_status) { should eq 0 }
end
describe command('find /usr/local/share/gems/gems/'), :if => os[:family] == 'redhat' do
  its(:stdout) { should match /kitchen-ansible/ }
  its(:exit_status) { should eq 0 }
end

