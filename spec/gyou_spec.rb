require 'spec_helper'

describe Gyou do
  it 'has a version number' do
    expect(Gyou::VERSION).not_to be nil
  end

  context 'valid string' do
    it 'returns correct response' do
      expect(Gyou.get("かきくけこ")).to eq("か")
    end
    it 'returns correct response' do
      expect(Gyou.get("たなか")).to eq("た")
    end
  end

  context 'invalid string' do
    it 'raises error' do
      expect { Gyou.get("田中") }.to raise_error(RuntimeError)
    end
    it 'raises error' do
      expect { Gyou.get("1") }.to raise_error(RuntimeError)
    end
    it 'raises error' do
      expect { Gyou.get("") }.to raise_error(RuntimeError)
    end
  end

  context 'invalid type' do
    it 'raises error' do
      expect { Gyou.get([1,2,3]) }.to raise_error(RuntimeError)
    end
  end
end
