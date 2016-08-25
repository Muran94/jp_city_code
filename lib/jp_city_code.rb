# coding: utf-8
require "jp_city_code/version"
require "jp_city_code/city_code"
require "jp_city_code/config"

module JpCityCode
  @config = Config.new

  def self.config
    @config
  end

end
