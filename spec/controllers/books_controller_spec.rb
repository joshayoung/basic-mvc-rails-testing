require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  context "browse to new page" do
    it "returns new template successfully" do
      book = create(:book)
      get :new, id: book.id
      expect(response).to render_template :new
    end
  end

  context "returns the edit page" do
    it "returns successfully" do
      get :edit
      expect(response).to be_success
    end
  end

  context "returns the index page" do
    it "returns successfully" do
      get :index
      response.success?
    end
  end

  context "returns the show page" do
    it "returns successfully with user info" do
      book = Book.create!(
        title: "Gone with the Wind",
        word_count: "418053",
        description: "A famous novel."
      )
      get :show, params: { id: book.to_param }
      response.success?
    end
  end
end
