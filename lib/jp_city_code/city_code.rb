require "jp_city_code/mapping"
module JpCityCode
  class CityCode
    attr_accessor :city_code, :prefecture_name, :city_name, :prefecture_name_k, :city_name_k

    def self.build(city_code, prefecture_name, city_name, prefecture_name_k, city_name_k)
      city = self.new
      city.city_code         = city_code
      city.prefecture_name   = prefecture_name
      city.city_name         = city_name
      city.prefecture_name_k = prefecture_name_k
      city.city_name_k       = city_name_k

      city
    end

    def self.find(city_code)
      return if city_code.nil?
      return unless city_code.is_a?(String)
      ret = Mapping.data[city_code]
      return unless ret

      self.build(ret[:city_code], ret[:prefecture_name], ret[:city_name], ret[:prefecture_name_k], ret[:city_name_k])
    end
  end
end
