class User < ActiveRecord::Base
	validates :name, presence: true, length: {maximum:30}
	  validates :email,format: {with:   /[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}/,message: "Enter a valid email"}
	  validates :password,length:{minimum:6}
	  validates :password, confirmation: true
	  
	  
end
