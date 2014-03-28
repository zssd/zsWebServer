require File.expand_path('../support/helpers', __FILE__)
include Helpers::Zswebserver
describe_recipe 'zsWebServer::default' do

  describe 'IIS test case' do
    it 'IIS isas a service' do
	  	  service('w3svc').must_be_running
  	end

  	it 'Are ALL App Pools exist and are running?' do
  		assert false, 'test not yet implemented'
  	end
  	
    it 'has redirection config setup appropriate per-environment (STG/PROD)' do
  	 	assert false, 'test not yet implemented'
  	end
  end

  describe 'Infrstructure test cases' do
  	it 'installs .NET 2.0' do
  		directory('%windir%\microsoft.net\framework\2.0.50727').must_exist 
  	end

  	it 'installs .NET 4.0' do
  		directory('%windir%\microsoft.net\framework\4.0.30319').must.exist
  	end

  	it 'is in the correct OU' do
  	  	assert false, 'test not yet implemented'
  	end
  end 

end