class Contest < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :start_date
  validates_presence_of :end_date

  def entries
    Entries.where("contest_id = ?", self.id)
  end
end
