require 'pry'
require_relative '../lib/complaint'
require_relative '../lib/complaint_adapter'
require_relative '../lib/complaint_template'

ComplaintAdapter.build_complaints
puts "Welcome to 311 Complaints! Please enter your zip code:"
zip_code = gets.strip
while zip_code.downcase != "exit"
  complaints = Complaint.find_by_zip(zip_code)
  complaints.each do |complaint|
    show(complaint)
  end
  puts "---------------------------------------------"
  puts "No more compliants for #{zip_code}"
  puts "Enter another zip code or type 'exit' to quit"
  zip_code = gets.strip
end
