require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  context "GET #index" do
    it "returns http success" do
      get :index
      response.successful?
    end
  end

  context "GET #show" do
    it "returns http success" do
      book = book_attributes
      get :show, params: { id: book.to_param }
      response.successful?
    end
  end

  context "GET #new" do
    it "returns http success" do
      get :new
      response.successful?
    end
  end

  context "GET #edit" do
    it "returns http success" do
      book = book_attributes
      get :edit, params: { id: book.to_param }
      response.successful?
    end
  end

  context "POST #create" do
    it "returns http success" do
      post :create
      response.successful?
    end
  end

  context "PATCH #update" do
    it "returns http success" do
      book = book_attributes
      patch :update, params: { id: book.to_param }
      response.successful?
    end
  end

  context "DELETE #destroy" do
    it "returns http success" do
      book = book_attributes
      delete :destroy, params: { id: book.to_param }
      response.successful?
    end
  end

private

  def book_attributes
    Book.create!(
      title: "Gone with the Wind",
      word_count: "418053",
      description: "A famous novel."
    )
  end
end
