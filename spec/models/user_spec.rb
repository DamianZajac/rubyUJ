require 'rails_helper'

describe User do
  it { should validate_presence_of :first_name }
  
  before :each do
    @user = User.new(first_name: 'John', last_name: 'Smith')
  end
  
  describe 'full name' do
    it 'returns user full name' do
      expect(@user.full_name).to eq 'John Smith'
    end
  end
  
  describe 'initials' do
    it 'retutns user initials' do 
      expect(@user.initials).to eq 'JS'
    end
  end
end
