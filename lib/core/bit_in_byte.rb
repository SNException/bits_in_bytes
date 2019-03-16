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

# The BitInByte object represents a single bit inside a byte value.
# He accepts a postion of himself which must be in the range
# of 1-8 and the actualbyte value which must be in the range of 0-255. 
# The byte value may be decimal, hex, octal, or binary.
#
# author:: Niklas Schultz
# version:: 0.1.2
# license:: MIT
class BitInByte
  def initialize(pos, byte)
    @pos = pos
    @byte = byte
  end

  def value
    raise ArgumentError, 'pos must be 1-8' if @pos <= 0 || @pos > 8
    raise ArgumentError, 'byte must be 0-255' if @byte < 0 || @byte > 255

    position = @pos - 1
    ((1 << position) & @byte) != 0
  end
end
