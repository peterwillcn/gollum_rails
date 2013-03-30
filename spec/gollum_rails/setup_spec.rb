# Setup testing
require 'spec_helper'
describe GollumRails::Setup do
  it "should setup the application" do
    GollumRails::Setup.build do |setup|

      # => The repository path to the 
      #
      #
      setup.repository = '.'      

      #setup.wiki.use = :default
      setup.startup=(true).should be_true

      setup.repository = nil
      expect{setup.startup=true}.to raise_error GollumRails::GollumInternalError
    end


  end
end