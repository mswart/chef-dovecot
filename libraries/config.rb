#
# Author:: Malte Swart (<chef@malteswart.de>)
# Cookbook Name:: dovecot
#
# Copyright 2013, Malte Swart
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

module Dovecot
  class Config
    attr_reader :options

    def initialize(options)
      @options = options
    end

    def content
      @lines = []
      format_options options
      @lines << ''
      @lines.join "\n"
    end


    private

    def format_options(options, prefix='')
      options.sort.each do |option, value|
        next if value.nil? or option.chars.first == '_'
        format_option option, value, prefix
      end
    end

    def format_option(option, value, prefix='')
      value = 'yes' if value == true
      value = 'no' if value == false
      if value.kind_of? String or not value.respond_to? :each
        @lines <<  "#{prefix}#{option} = #{value}"
      else
        @lines << "#{prefix}#{option.sub ':', ' '} {"
        format_options value, prefix + '  '
        @lines << "#{prefix}}"
      end
    end
  end
end
