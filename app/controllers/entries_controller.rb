class EntriesController < ApplicationController
  def show
  end

  def new
    @contest = Contest.find(params[:contest_id]) 
  end

  def create
    entry = Entries.new
    entry.title = params[:title]
    entry.description = params[:description]
    if(!params[:image].nil?)
      entry.image = Entries.save_image(params[:image])
    else
      entry.image = nil
    end

    if(!params[:proposal].nil?)
      entry.proposal = Entries.save_proposal(params[:proposal]) 
    else
      entry.proposal = nil
    end
    entry.votes = 0
    entry.approval = false
    entry.contest_id = params[:contest_id]

    if(entry.save)
      flash[:message] = "Thank You for Your Entry"
      redirect_to "/contest/#{params[:contest_id]}"
    else
    end
  end

end
