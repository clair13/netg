class CitationsController < ApplicationController
  def index
    @citations = Citation.all.paginate(:page => params[:page], :per_page => 12)
  end

  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)

    if @citation.save
      redirect_to citations_path
    else
      render 'new'
    end
  end

  private

  def citation_params
    params.require(:citation).permit(:title)
  end
end
