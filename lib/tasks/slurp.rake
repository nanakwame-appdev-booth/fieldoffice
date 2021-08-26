namespace :slurp do
  desc "TODO"
  task individuals: :environment do

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "individuals.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Individual.new
    t.first_name = row["first_name"]
    t.last_name = row["last_name"]
    t.address_id = row["address_id"]
    t.phone_number = row["phone_number"]
    t.email = row["email"]
    t.role = row["role"]
  
    t.save
    puts "#{t.first_name}, #{t.phone_number} saved"
  end

  puts "There are now #{Individual.count} rows in the individuals table"

  end

end
