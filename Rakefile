# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

require 'csv'    

csv_file = File.read('AdWords API Cities-DMA Regions 2015-04-03.csv')
namespace :db do
	task :import_csv => :environment do
    CSV.foreach(csv_file, {:col_sep => ",", :write_headers => true, 
    	:headers => [:city, :criteria_id, :state, :dma_region, :dma_region_code]}
    	) do |row|
    	City.create(:city => row[:city], :state => row[:state])
    end
end
end


Rails.application.load_tasks