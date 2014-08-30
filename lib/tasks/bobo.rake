namespace :bobo do
  desc "drop, create, migrate bobo's database"
  task yolo: [:environment,'db:drop', 'db:create', 'db:migrate']
end
