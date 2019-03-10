# MIT License
#
# Copyright 2019 Niklas Schultz.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
require_relative '../lib/core/bit_in_byte.rb'
require 'test/unit'

class TestBitInByte < Test::Unit::TestCase
  def test_should_raise_when_passing_zero_as_position
    assert_raises(ArgumentError) do
      BitInByte.new(0, 255).value
    end
  end

  def test_should_raise_when_passing_negative_value_as_position
    assert_raises(ArgumentError) do
      BitInByte.new(-1, 255).value
    end
  end

  def test_should_raise_when_passing_position_greater_than_eight
    assert_raises(ArgumentError) do
      BitInByte.new(9, 255).value
    end
  end

  def test_should_raise_when_passing_byte_less_than_zero
    assert_raises(ArgumentError) do
      BitInByte.new(1, -1).value
    end
  end

  def test_should_raise_when_passing_byte_greater_than_255
    assert_raises(ArgumentError) do
      BitInByte.new(1, 256).value
    end
  end

  def test_should_return_true_when_bit_is_set
    assert_equal(BitInByte.new(1, 255).value, true)    
    assert_equal(BitInByte.new(1, 1).value, true)    
    assert_equal(BitInByte.new(5, 16).value, true)    
  end

 def test_should_return_false_when_bit_is_not_set
    assert_equal(BitInByte.new(1, 2).value, false)    
    assert_equal(BitInByte.new(4, 1).value, false)    
    assert_equal(BitInByte.new(8, 16).value, false)    
    assert_equal(BitInByte.new(5, 0).value, false)    
 end
end
