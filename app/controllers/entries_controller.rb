class EntriesController < ApplicationController
  def show
  end

  def new
    @entry = Entries.new
  end

  def create
    entry = Entries.new
    entry.title = params[:title]
    entry.description = params[:description]
    entry.image = nil
    entry.proposal = nil
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
