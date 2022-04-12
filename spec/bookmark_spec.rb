require 'bookmark.rb'

describe Bookmark do

  it 'returns bookmarks in full' do
    bookmarks = Bookmark.all
  
  expect(bookmarks).to include "http://www.makersacademy.com/"
  expect(bookmarks).to include "http://www.google.com/"
  expect(bookmarks).to include "http://www.destroyallsoftware.com"
  end
end



