require 'spec_helper'

describe 'Users scaffold', type: :feature do
  before(:each) do
    Mongoid.purge!
  end

  it 'on scroll to bottom, render more items', js: true do
    50.times { create(:user) }

    visit users_path

    User.all.limit(40).each_with_index do |user, index|
      if index < 20
        expect(page).to have_content(user.email)
      else
        expect(page).not_to have_content(user.email)
      end
    end

    page.execute_script "window.scrollBy(0,2500)"

    User.all.limit(40).each_with_index do |user, index|
      if index < 20
        expect(page).not_to have_content(user.email)
      else
        expect(page).to have_content(user.email)
      end
    end
  end
end
