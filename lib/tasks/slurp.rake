namespace :slurp do
  desc "TODO"
  task address_individual: :environment do

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "address_individual.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = AddressIndividual.new
    t.address_id = row["address_id"]
    t.individual_id = row["individual_id"]

    t.save
    puts "#{t.address_id}, #{t.individual_id} saved"

  end

    puts "There are now #{AddressIndividual.count} rows in the address_individual table"
  end

end
