require 'spec_helper'

describe "Static Pages" do

  subject {page}

  describe "Home page" do
  	before {visit root_path} #because root_path should be home_path
  	
  	it {should have_content('Stock Fetcher Web Application')}
  	it {should have_title(full_title(''))}
  	it {should_not have_title('|Home')}
  end
  describe "About Page" do
  	before {visit about_path}
  	it {should have_content('Seyon Vasantharajan')}
  	it {should have_content('Anojan Palarajah')}
  	it {should have_content('Roy Kwon')}
  	it {should have_title(full_title(' About'))}
  end

  
end
