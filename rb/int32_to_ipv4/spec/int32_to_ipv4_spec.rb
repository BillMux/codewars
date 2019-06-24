# frozen_string_literal: true

require_relative '../lib/int32_to_ipv4'

describe '#int32_to_ipv4' do
  it 'converts zero' do
    expect(int32_to_ipv4(0)).to eq '0.0.0.0'
  end

  it 'converts a two digit number' do
    expect(int32_to_ipv4(32)).to eq '0.0.0.32'
  end

  it 'converts a longer number' do
    expect(int32_to_ipv4(2154959208)).to eq '128.114.17.104'
  end
end
