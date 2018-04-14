# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CommentStatus.destroy_all

comment_status_list = [
  {name: "不需回覆"},
  {name: "未回覆"},
  {name: "已回覆"},
  {name: "已回復，列入 Lighthouse Issue List"},
  {name: "已回覆，已修正"},    
]

comment_status_list.each do |status|
  CommentStatus.create(comment_status: status[:name])
end  

puts "Commnet_status created"