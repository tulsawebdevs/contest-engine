require 'spec_helper'

describe Contest do
  

  context "a Contest (in general)" do
    before(:each) do
      @contest = Contest.new
    end

    it "should require a title" do
      @contest.end_date = "2011-3-23 15:15:20"
      @contest.start_date = "2011-20-3 18:15:00"
      @contest.description = "I am a wonderful description"
      @contest.should_not be_valid
      @contest.title = "I am a title"
      @contest.should be_valid
    end

    it "should require a description" do
      @contest.end_date = "2011-3-23 15:15:20"
      @contest.start_date = "2011-20-3 18:15:00"
      @contest.title = "I am a title"
      @contest.should_not be_valid
      @contest.description = "I am a wonderful description"
      @contest.should be_valid
    end

    it "should require a start date" do
      @contest.end_date = "2011-3-23 15:15:20"
      @contest.description = "I am a wonderful description"
      @contest.title = "I am a title"
      @contest.should_not be_valid
      @contest.start_date = "2011-3-20 18:15:00"
      @contest.should be_valid
    end
    
    it "should require an end date" do
      @contest.description = "I am a wonderful description"
      @contest.title = "I am a title"
      @contest.start_date = "2011-20-3 18:15:00"
      @contest.should_not be_valid
      @contest.end_date = "2011-3-23 15:15:20"
      @contest.should be_valid
    end
  end
end
