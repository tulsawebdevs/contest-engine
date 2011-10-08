class Entries < ActiveRecord::Base
  def self.save_proposal(file)
    name = file.original_filename
    directory = "public/pdf/entry"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(file.read) }
    return name
  end
  def self.save_image(file)
    name = file.original_filename
    directory = "public/image/entry"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(file.read) }
    return name
  end
end
