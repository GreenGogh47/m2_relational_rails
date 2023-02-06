require 'rails_helper'

RSpec.describe RareBook, type: :model do
  describe 'relationships' do
    it { should belong_to :library }
  end
end
