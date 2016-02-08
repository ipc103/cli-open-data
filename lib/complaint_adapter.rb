require 'json'
require 'open-uri'
require_relative 'complaint'

class ComplaintAdapter
  URL = 'http://data.cityofnewyork.us/resource/erm2-nwe9.json'
  def self.response
    response = open(URL).read
  end

  def self.complaints_data
    JSON.parse(response)
  end

  def self.build_complaints
    complaints_data.each do |complaint_data|
      Complaint.new(complaint_data['descriptor'], complaint_data['complaint_type'], complaint_data['street_name'], complaint_data['borough'], complaint_data['resolution_description'], complaint_data['incident_zip'])
    end
  end

end
