gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/producer'
require_relative '../lib/province'

class ProducerTest < Minitest::Test
    DATA = {
            name: 'No producers',
            producers: [],
            demand: 30,
            price: 20
        }
    
    def setup
        @noProducers = Province.new(DATA)
    end

    def test_production_empty_shortfall
        assert_equal(30, @noProducers.shortfall)
    end
    def test_production_empty_profit
        assert_equal(0, @noProducers.profit)
    end


end
