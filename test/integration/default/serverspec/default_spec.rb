require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  # it 'does something' do
    # skip 'Replace this with meaningful tests'
  # end
  describe package ("httpd") do
    it {should be_installed}
  end
  describe command ("ls -o /tmp") do
     its (:exit_status) { should eq 0 }
  end
end
