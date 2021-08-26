namespace :slurp do
  desc "TODO"
  task address: :environment do

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "addresses.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Address.new
    t.address = row["address"]
    t.address2 = row["address2"]
    t.city = row["city"]
    t.state = row["state"]
    t.zip_code = row["zip_code"]

    t.save
    puts "#{t.address}, #{t.zip_code} saved"

  end

  puts "There are now #{Address.count} rows in the transactions table"

  end

end
