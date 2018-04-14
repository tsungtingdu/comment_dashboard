namespace :dev do
  task add_status: :environment do

    comments = Comment.all
    
    comments.each do |c|
      c.comment_status_id = 2
      c.save
    end  

    puts "Task completed!"
  end
end

