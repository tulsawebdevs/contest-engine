class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
  end

  def new
  end

  def create
    contest = Contest.new

    contest.title = params[:title]
    contest.description = params[:title]
    contest.pdf = Contest.save_rules(params[:rules]) 
    contest.start_date = params[:start_date]
    contest.end_date = params[:end_date]
    contest.sponsor_id = nil



    if(contest.save)
      redirect_to "/contest/#{contest.id}/#{contest.title.gsub(' ', '-').downcase}"
    else
      redirect_to '/contest/new'
    end
  end

  def edit
  end

end
