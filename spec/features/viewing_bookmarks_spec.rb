feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "https://devhints.io/rspec"
    expect(page).to have_content "https://devhints.io/capybara"
  end
end
