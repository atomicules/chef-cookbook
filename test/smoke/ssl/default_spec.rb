# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/etc/rabbitmq/rabbitmq.config') do
  it { should be_file }
  its('owner') { should eq 'root' }
  its('group') { should eq 'root' }
  its('content') { should match /,{versions,\['tlsv1\.2'\]}\n.*,{ciphers,\[{rsa,aes_256_cbc,sha256}\]}/ }
end
