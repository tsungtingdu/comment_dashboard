class PagesController < ApplicationController

  def index
    @comments = Comment.all.order(lh_comment_id: :desc).page(params[:page]).per(25)
  end

  def show_comment
    
  end

  def by_section
    @comments = Comment.all
    get_report = Hash.new
    
    @comments.each do |comment|
      section_id = comment.section_id  
      if !get_report[section_id]
        get_report[section_id] = 1
      else  
        get_report[section_id] = get_report[section_id] + 1
      end 
    end
    @sort_by_section = get_report.sort_by{|k,v| k}
    @sort_by_comment = get_report.sort_by{|k,v| v}
  end

  def read
    csv_text = File.read('comment_20180405215846.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      if Comment.where(:lh_comment_id => row[0]).any?
        puts "No new entry"
      else
        new_comment = Comment.new  
        new_comment.lh_comment_id = row[0]
        new_comment.user_name = row[1]
        new_comment.section_id = row[3]
        new_comment.section_name = row[4]
        new_comment.lesson_id = row[5]
        new_comment.lesson_name = row[6]
        new_comment.unit_id = row[7] 
        new_comment.unit_name = row[8]
        new_comment.assignment_id = row[9]
        new_comment.title = row[11]
        new_comment.content = row[12]
        new_comment.replied_comment_id = row[13]
        new_comment.replied_comment_title = row[14]
        new_comment.replied_comment_content = row[15]
        new_comment.upvote = row[16]
        new_comment.total_following = row[17]
        new_comment.date_comment = row[18]
        new_comment.time_comment = row[19]
        new_comment.thread_type = row[20]
        new_comment.save
      end                      
    end
    render :index
  end   

end


