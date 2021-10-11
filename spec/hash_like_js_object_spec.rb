# frozen_string_literal: true

require_relative '../hash_like_js_object'

RSpec.describe Hash do
  describe '#on person hash' do
    describe 'with_dot_notation' do
      before do
        @person = { name: 'Bob', company: 'Google' }
      end

      it 'returns name' do
        expect(@person.name).to eq('Bob')
      end

      it 'returns company' do
        expect(@person.company).to eq('Google')
      end

      it 'returns age after assign' do
        @person.age = 45

        expect(@person.age).to eq(45)
      end

      it 'return boolean after assign' do
        @person.works = true

        expect(@person.works?).to eq(true)
      end

      it 'returns boolean after assign' do
        @person.hr = false

        expect(@person.hr?).to eq(false)
      end
    end

    describe 'with_standard_notation' do
      before do
        @person = { name: 'Bob', company: 'Google' }
      end

      it 'returns name' do
        expect(@person[:name]).to eq('Bob')
      end

      it 'returns company' do
        expect(@person[:company]).to eq('Google')
      end

      it 'returns age after assign' do
        @person[:age] = 45

        expect(@person[:age]).to eq(45)
      end

      it 'return boolean after assign' do
        @person[:works?] = true

        expect(@person[:works?]).to eq(true)
      end

      it 'returns boolean after assign' do
        @person[:hr?] = false

        expect(@person[:hr?]).to eq(false)
      end
    end
  end
end
