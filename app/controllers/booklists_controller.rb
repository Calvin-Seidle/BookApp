class BooklistsController < ApplicationController
  before_action :set_booklist, only: [:show, :edit, :update, :destroy]

  # GET /booklists
  def index
    @booklists = Booklist.all
    @booklists = Booklist.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /booklists/1
  def show
  end

  # GET /booklists/new
  def new
    @booklist = Booklist.new
  end

  # GET /booklists/1/edit
  def edit
  end

  # POST /booklists
  def create
    @booklist = Booklist.new(booklist_params)

    if @booklist.save
      redirect_to @booklist, notice: 'Booklist was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /booklists/1
  def update
    if @booklist.update(booklist_params)
      redirect_to @booklist, notice: 'Booklist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /booklists/1
  def destroy
    @booklist.destroy
    redirect_to booklists_url, notice: 'Booklist was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booklist
      @booklist = Booklist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def booklist_params
      params.require(:booklist).permit(:ISBN, :genre, :title, :author, :pages, :year, :image)
    end
end
