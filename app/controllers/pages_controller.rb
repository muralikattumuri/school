class PagesController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index ]

	def index
    
	end

	def students
		if current_user.principal? || current_user.faculty?
    	@students = User.where(role: "student")
    	#raise @students.to_yaml
    else
    	@students = User.where(id: current_user.id)

    end
	end

   def faculty
		if current_user.principal? 
    	@faculty = User.where(role: "faculty")
    	#raise @students.to_yaml
    else
    	@faculty = User.where(role: "faculty").where(id: current_user.id) 
    end
	end
    def year1
    if current_user.principal? || current_user.faculty?
        @students = User.where(role: "student").where(year: '1')
        @marks = Array.new
        @students.each do |s|
        @marks << Mark.where(user_id: s.id)
        

        end
   #    raise @marks.to_yaml

      end
  end
 
   def year2
    if current_user.principal? || current_user.faculty?
        @students = User.where(role: "student").where(year: '2')

        @marks = Array.new
        @students.each do |s|
        @marks << Mark.where(user_id: s.id)
        
      end
  end
end
  def year3
    if current_user.principal? || current_user.faculty?
        @students = User.where(role: "student").where(year: '3')

         @marks = Array.new
        @students.each do |s|
        @marks << Mark.where(user_id: s.id)
        
      end
  end
end
end
