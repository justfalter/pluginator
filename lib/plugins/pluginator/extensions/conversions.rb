=begin
Copyright 2013 Michal Papis <mpapis@gmail.com>

This file is part of pluginator.

pluginator is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pluginator is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pluginator.  If not, see <http://www.gnu.org/licenses/>.
=end

module Pluginator::Extensions
  # a placeholder for methods to convert strings
  module Conversions

    # converts class name to a file name
    def class2string( klass )
      klass.to_s.gsub(/([A-Z])/m){|match| "_#{$1.downcase}" }[1..-1]
    end

    # converts file name to a class name
    def string2class( str )
      str.to_s.capitalize.gsub(/_(.)/){ $1.upcase }
    end

    # gets class name last part
    def class2name(klass)
      klass.name.split('::').last
    end

  end
end
