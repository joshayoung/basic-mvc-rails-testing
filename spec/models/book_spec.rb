require "rails_helper"

RSpec.describe Book, type: :model do
  context "validation tests" do
    it "require a title" do
      book = Book.new(word_count: "418053", description: "A famous novel.").save
      expect(book).to eq(false)
    end

    it "require a word_count" do
      book = Book.new(title: "Gone with the Wind", description: "A famous novel.").save
      expect(book).to eq(false)
    end

    it "require a word_count to be numeric" do
      book = Book.new(title: "Gone with the Wind", word_count: "one thousand", description: "A famous novel.")
      book.valid?
      expect(book.errors[:word_count].any?).to eq(true)
    end

    it "require a description" do
      book = Book.new(title: "Gone with the Wind", word_count: "418053").save
      expect(book).to eq(false)
    end
    it "save successfully" do
      book = Book.new(
        title: "Gone with the Wind",
        word_count: "418053",
        description: "A famous novel."
      ).save
      expect(book).to eq(true)
    end
  end

  context "method tests" do
    let(:params) { { title: "Gone with the Wind", word_count: "418053", description: "A famous novel." } }
    before(:each) do
      Book.new(params).save
      Book.new(params.merge(antique: true)).save
      Book.new(params.merge(antique: false)).save
    end

    it "will return the antique books" do
      expect(Book.antiques.size).to eq(1)
    end

    it "will return the newer books" do
      expect(Book.recent.size).to eq(2)
    end

  end
end
