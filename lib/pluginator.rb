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

require "pluginator/extendable_autodetect"
require "pluginator/version"

# A simple plugin system based on Gem.find_files
module Pluginator
  # Find plugins for the given group
  #
  # @param group [String] name of plugins group
  # @option type [String] name of type to load
  # @option extend [Array of/or Symbol] list of extension to extend into pluginator instance
  # @return instance of Pluginator
  def self.find(group, options = {})
    Pluginator::ExtendableAutodetect.new(group, options)
  end
end
