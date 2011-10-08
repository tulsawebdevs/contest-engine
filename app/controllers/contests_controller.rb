class ContestsController < ApplicationController
  def index
    @contests = Contest.order("start_date DESC")
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
    if(!params[:rules].nil?)
      contest.pdf = Contest.save_rules(params[:rules])
    else
      contest.pdf = nil
    end
    contest.start_date = params[:start_date]
    contest.end_date = params[:end_date]
    contest.sponsor_id = nil

    result = contest.save

    phase1 = Phases.new
    phase1.end_date= params[:phase1_end_date]
    phase1.contest_id = contest.id
    phase1.title = "Submissions"

    phase2 = Phases.new
    phase2.end_date= params[:phase2_end_date]
    phase2.contest_id = contest.id
    phase2.title = "Voting1"

    phase3 = Phases.new
    phase3.end_date= params[:phase3_end_date]
    phase3.contest_id = contest.id
    phase3.title = "Fabrication"

    if (result)
      result = phase1.save
      if (result)
        result = phase2.save
        if (result)
          result = phase3.save
        end
      end
    end
    if(result)
      redirect_to "/contest/#{contest.id}/#{contest.title.gsub(' ', '-').downcase}"
    else
      redirect_to '/contest/new'
    end
  end

  def edit
  end

  def vote
    @entry = Entries.find(params[:id])
    @entry.votes = @entry.votes + 1
    @entry.save
    render :json => @entry.votes
  end

end
