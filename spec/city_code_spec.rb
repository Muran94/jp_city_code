# coding: utf-8
require 'spec_helper'

describe JpCityCode::CityCode do

  describe '.build' do
    let(:city) { JpCityCode::CityCode.build('011002', '北海道', '札幌市', 'ﾎｯｶｲﾄﾞｳ', 'ｻｯﾎﾟﾛｼ') }
    it { expect(city.city_code).to eq '011002' }
    it { expect(city.prefecture_name).to eq '北海道' }
    it { expect(city.city_name).to eq '札幌市' }
    it { expect(city.prefecture_name_k).to eq 'ﾎｯｶｲﾄﾞｳ' }
    it { expect(city.city_name_k).to eq 'ｻｯﾎﾟﾛｼ' }
  end

  describe '.find' do
    let(:city) { JpCityCode::CityCode.find('011002') }
    it { expect(city.city_code) ==  '011002' }
    it { expect(city.prefecture_name) == '北海道' }
    it { expect(city.city_name) == '札幌市' }
    it { expect(city.prefecture_name_k) == 'ﾎｯｶｲﾄﾞｳ' }
    it { expect(city.city_name_k) == 'ｻｯﾎﾟﾛｼ' }

    let(:city2) { JpCityCode::CityCode.find('000000') }
    it { expect(city2).to be_nil }
  end
end
