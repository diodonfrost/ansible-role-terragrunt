# Check if Terragrunt is functionnal

control 'terragrunt-01' do
  impact 1.0
  title 'Terragrunt install'
  desc 'Terragrunt should be functionnal'
  describe command('terragrunt --version') do
    its('exit_status') { should eq 0 }
  end
end
