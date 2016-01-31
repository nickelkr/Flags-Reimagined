# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

require 'csv'    

csv_file = './AdWords API Cities-DMA Regions 2015-04-03.csv'
namespace :db do
	task :import_csv => :environment do
    		CSV.foreach(csv_file, :headers => true) do |row|
    			City.create(:city => row['city'], :state => row['state'])
    		end
	end
end


Rails.application.load_tasks
