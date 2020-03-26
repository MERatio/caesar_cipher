# frozen_string_literal: true

require_relative '../lib/caesar_cipher.rb'

describe '#caesar_cipher' do
  it 'wraps from z to a' do
    expect(caesar_cipher('Xylophone', 30)).to eql('Bcpstlsri')
  end

  it 'returns the same case' do
    expect(caesar_cipher('sPoNgEbOB', 20)).to eql('mJiHaYvIV')
  end

  it 'returns shifted word' do
    expect(caesar_cipher('Hello', 8)).to eql('Pmttw')
  end

  it 'returns shifted sentence' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'returns an empty string if the argument is an empty string' do
    expect(caesar_cipher('', 10)).to eql('')
  end

  it 'does not shift special characters' do
    expect(caesar_cipher('.,()&^%$#@!What?!?', 20)).to eql('.,()&^%$#@!Qbun?!?')
  end
end
