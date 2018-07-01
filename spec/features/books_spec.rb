require "rails_helper"

RSpec.feature "Books", type: :feature do
  #Create:
  context "Create new Book" do
    before(:each) do
      visit new_book_path
    end
    it "should work" do
      within("form") do
        fill_in "Title", with: "Shopping List"
        fill_in "Word Count", with: 1000
        fill_in "Description", with: "A great book"
      end
      click_button "Create Book"
      expect(page).to have_content("Book successfully created")
    end
    it "should fail without a Title" do
      within("form") do
        fill_in "Word Count", with: 1000
        fill_in "Description", with: "A great book"
      end
      click_button "Create Book"
      expect(page).to have_content("Title can't be blank")
    end
  end

  #Read:
  context "Read Book" do
    let!(:book) { book_attributes }
    it "index page contains book heading" do
      visit books_path
      expect(page).to have_content "Books"
    end
    it "show page displays book details" do
      visit book_path(book)
      expect(page).to have_content book.title
      expect(page).to have_content book.word_count
      expect(page).to have_content book.description
    end
  end

  #Update:
  context "Update Book" do
    let!(:book) { book_attributes }
    before(:each) do
      visit edit_book_path(book)
    end
    it "should work" do
      within("form") do
        fill_in "Title", with: "The Hobbit"
      end
      click_button "Update Book"
      expect(page).to have_content "Book successfully updated!"
    end
    it "should fail" do
      within("form") do
        fill_in "Title", with: nil
      end
      click_button "Update Book"
      expect(page).to have_content "Title can't be blank"
    end
  end

  #Delete:
  context "Delete Book" do
    it "should work" do
      visit book_path(book_attributes)
      expect { click_link "Delete" }.to change(Book, :count).by(-1)
    end
  end

private

  def book_attributes
    create(:book)
  end
end
