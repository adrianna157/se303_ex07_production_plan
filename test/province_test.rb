gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test
  ASIA = Province.new(sample_province_data)

  def test_province_shortfall
    
    assert_equal(5, ASIA.shortfall)
  end

  def test_profit_calculation
   
    assert_equal(230,ASIA.profit)
  end

end
