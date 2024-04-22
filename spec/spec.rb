require 'spec_helper'
require_relative '../code/stockpricer.rb'

RSpec.describe 'Stock Pricer' do

  describe 'It ciphers' do

    it 'Returns best days to buy and sell' do
      days = [17,3,6,9,15,8,6,1,10]
      expected_result = [1,4]
      expect(stock_picker(days)).to eq(expected_result)
    end

  end
end
