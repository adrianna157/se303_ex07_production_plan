gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/producer'
require_relative '../lib/province'

class ProducerTest < Minitest::Test
    
    
    def setup
        @data = {
            name: 'No producers',
            producers: "",
            demand: 30,
            price: 20
        }
        @noProducers = Province.new(@data)
    end

    def test_production_empty_shortfall
        assert_equal(30, @noProducers.shortfall)
    end

    def test_production_empty_profit
        assert_equal(0, @noProducers.profit)
    end

    def test_string_for_producers
            #@data[:producers] = ""
            assert_equal(true,@data[:producers].kind_of?(String))
            
    end



end
