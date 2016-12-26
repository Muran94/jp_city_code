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
    it { expect(city.city_code).to eq '011002' }
    it { expect(city.prefecture_name).to eq '北海道' }
    it { expect(city.city_name).to eq '札幌市' }
    it { expect(city.prefecture_name_k).to eq 'ﾎｯｶｲﾄﾞｳ' }
    it { expect(city.city_name_k).to eq 'ｻｯﾎﾟﾛｼ' }

    #政令指定都市
    let(:city_seirei) { JpCityCode::CityCode.find('041017') }
    it { expect(city_seirei.city_code).to eq '041017' }
    it { expect(city_seirei.prefecture_name).to eq '宮城県' }
    it { expect(city_seirei.city_name).to eq '仙台市青葉区' }
    it { expect(city_seirei.prefecture_name_k).to be_nil }
    it { expect(city_seirei.city_name_k).to be_nil }

    let(:city2) { JpCityCode::CityCode.find('000000') }
    it { expect(city2).to be_nil }
  end


end
