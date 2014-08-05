class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  private
  def set_book
    @book = Book.find(params[:id])
  end
  
  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.html
      format.csv
    end
  end
end
