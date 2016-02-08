def show(complaint)
  puts "Complaint: #{complaint.descriptor}"
  puts "Complaint Type: #{complaint.complaint_type}"
  puts "Location: #{complaint.street_name}, #{complaint.borough}"
  puts "Resolution: #{complaint.resolution}"
  puts ""
  puts "----------------------------------------------------------"
  puts
  puts "Press Enter To Continue:"
  gets
end
