class ReviewsController < ApplicationController


  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.order("id DESC")
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @review = Review.new
    @players = Player.all

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review])
  
    respond_to do |format|
      if @review.save
        format.html { redirect_to new_review_path, notice: 'Review was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # # GET /reviews/1
  # # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # # PUT /reviews/1
  # # PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to reviews_path, notice: 'Review was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # # DELETE /reviews/1
  # # DELETE /reviews/1.json
  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy

  #   respond_to do |format|
  #     format.html { redirect_to reviews_url }
  #     format.json { head :no_content }
  #   end
  # end
end
