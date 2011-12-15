namespace :db do
  namespace :seeds do
    Dir["db/seeds/*.rb"].each do |seed_file|
      seed_name = File.basename(seed_file, "_seeds.rb")
      desc "Load seed file #{seed_file}"
      task seed_name => :environment do
        require Rails.root.join(seed_file).to_s
      end
    end
  end
end