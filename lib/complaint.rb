class Complaint
  ALL = []

  attr_reader :descriptor, :complaint_type, :street_name, :borough, :resolution, :zip_code

  def initialize(descriptor, complaint_type, street_name, borough, resolution_description, zip_code)
    @descriptor = descriptor
    @complaint_type = complaint_type
    @street_name = street_name
    @borough = borough
    @resolution = resolution_description
    @zip_code = zip_code
    ALL << self
  end

  def address
    "#{street_name}, #{borough}"
  end

  def self.all
    ALL
  end

  def self.find_by_zip(zip_code)
    ALL.select {|complaint| complaint.zip_code == zip_code}
  end
end
