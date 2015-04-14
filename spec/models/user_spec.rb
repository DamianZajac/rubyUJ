require 'rails_helper'

describe User do
  describe 'full name' do
    it 'returns user full name' do
      user = User.new(first_name: 'John', last_name: 'Smith')
      
      expect(user.full_name).to eq 'John Smith'
    end
  end
  
  describe 'initials' do
    it 'retutns user initials' do
      user = User.new(first_name: 'John', last_name: 'Smith')
      
      expect(user.initials).to eq 'JS'
    end
  end
end
