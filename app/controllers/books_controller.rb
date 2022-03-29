# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    puts @book
    if @book.valid?
      @book.save
      redirect_to root_path
    else
      flash[:errors] = @book.errors.full_messages
      redirect_to new_book_path
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = "The book successfully updated!"
      redirect_to book_url(@book)
    else
      flash.now[:error] = "Book item update failed"
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :review, :price, :languaje, :number_pages, :image, :author_id, :gender_id)
  end
end
