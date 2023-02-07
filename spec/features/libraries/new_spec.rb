require 'rails_helper'

RSpec.describe "New Library" do
  describe "User Story 11, Parent Creation, as a visitor" do
    describe "on Library Index page" do
      xit "has a link to create a library" do
        visit '/libraries'
        expect(page).to have_link(href: "libraries/new")
      end

      xit "can create a new library" do
        
      end
    end
  end
end