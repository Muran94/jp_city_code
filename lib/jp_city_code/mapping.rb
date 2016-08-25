require 'yaml'

module JpCityCode
  module Mapping

    filepath = File.join(File.dirname(__FILE__), '../../data/city_code.yml')
    @data = YAML.load_file(filepath)

    def self.data
      JpCityCode.config.mapping_data || @data
    end
  end
end
