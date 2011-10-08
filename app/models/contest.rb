class Contest < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :start_date
  validates_presence_of :end_date

  def entries
    Entries.where("contest_id = ?", self.id)
  end

  def self.save_rules(file)
    name = file.original_filename
    directory = "public/pdf/contest"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(file.read) }
    return name
  end

  def active_contest?
    if self.end_date < DateTime.now and self.start_date > DateTime.now then
      return true
    else
      return false
    end
  end

end
