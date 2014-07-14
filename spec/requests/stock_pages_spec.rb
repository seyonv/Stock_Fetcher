
require 'spec_helper'

describe "StockPages" do
  subject {page}

  describe "Single Page" do
  	before {visit singlestock_path}

  	it {should have_content('Display Page For A Single Stock')}
  	it {should have_title(full_title(''))}
  end
end
