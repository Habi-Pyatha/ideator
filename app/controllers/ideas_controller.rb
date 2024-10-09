class IdeasController < ApplicationController
  def index
    # @ideas=Idea.all
    @pagy, @ideas=pagy(Idea.order("created_at DESC"))
    # @pagy, @idea=pagy(Idea.all)
  end
  def create
    # @idea=Idea.create(description: params[:idea][:description], author: params[:idea][:author])
    @idea=Idea.new(idea_params)
    if @idea.valid?
      @idea.save
        flash[:success]="Your idea has been posted!"
    else
        flash[:alert]="Woops! Look like there has been an error!"
    end
    redirect_to root_path
  end
  # def new
  #   # @idea=Idea.new
  # end
  def edit
    @idea=Idea.find(params[:id])
  end
  def update
    @idea=Idea.find(params[:id])
    if @idea.update(idea_params)
      flash[:success]="The idea has been updated"
      redirect_to root_path
    else
      flash[:alert]="Woops! Look like there has been an error"
      redirect_to edit_idea_path(params[:id])
    end
  end

  def destroy
    @idea=Idea.find(params[:id])
    @idea.destroy
    flash[:sucess]="The idea was sucessfully deleted!"
    redirect_to root_path
  end

  private
  def idea_params
    params.require(:idea).permit(:description, :author)
  end
end
