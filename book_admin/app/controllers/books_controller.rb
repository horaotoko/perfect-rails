class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  private
  def set_book
    @book = Book.find(params[:id])
  end

  before_action do
    redirect_to access_denied_path if params[:token].blank?
  end

  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.html
      format.csv
      format.json
    end
  end
end
