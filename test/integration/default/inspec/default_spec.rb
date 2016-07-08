require 'inspec'

describe command('hab --version') do
  its('exit_status') { should eq 0 }
end

describe user('hab') do
  it { should exist }
end
