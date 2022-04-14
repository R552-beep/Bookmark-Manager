require 'bookmark.rb'

describe Bookmark do
  
  describe '.all' do
    it 'returns a list of bookmarks' do
     connection = PG.connect(dbname: 'bookmark_manager_test')

     Bookmark.create(url: 'http://www.makersacademy.com')
     Bookmark.create(url: 'http://www.destroyallsoftware.com')
     Bookmark.create(url: 'http://www.google.com')


     bookmarks = Bookmark.all
  
     expect(bookmarks).to include "http://www.makersacademy.com"
     expect(bookmarks).to include "http://www.google.com"
     expect(bookmarks).to include "http://www.destroyallsoftware.com"
    end 
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://example.org' )

      expect(Bookmark.all).to include 'http://example.org'
    end
  end
end



