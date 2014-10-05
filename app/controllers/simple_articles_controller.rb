class SimpleArticlesController < ApplicationController
  before_action :set_simple_article, only: [:show, :edit, :update, :destroy]

  # GET /simple_articles
  # GET /simple_articles.json
  def index
    @simple_articles = SimpleArticle.all
  end

  # GET /simple_articles/1
  # GET /simple_articles/1.json
  def show
  end

  # GET /simple_articles/new
  def new
    @simple_article = SimpleArticle.new
  end

  # GET /simple_articles/1/edit
  def edit
  end

  # POST /simple_articles
  # POST /simple_articles.json
  def create
    @simple_article = SimpleArticle.new(simple_article_params)

    respond_to do |format|
      if @simple_article.save
        format.html { redirect_to @simple_article, notice: 'Simple article was successfully created.' }
        format.json { render :show, status: :created, location: @simple_article }
      else
        format.html { render :new }
        format.json { render json: @simple_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_articles/1
  # PATCH/PUT /simple_articles/1.json
  def update
    respond_to do |format|
      if @simple_article.update(simple_article_params)
        format.html { redirect_to @simple_article, notice: 'Simple article was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_article }
      else
        format.html { render :edit }
        format.json { render json: @simple_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_articles/1
  # DELETE /simple_articles/1.json
  def destroy
    @simple_article.destroy
    respond_to do |format|
      format.html { redirect_to simple_articles_url, notice: 'Simple article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_article
      @simple_article = SimpleArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_article_params
      params.require(:simple_article).permit(:name, :short_description, :full_description, :published)
    end
end
