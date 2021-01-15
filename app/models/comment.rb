class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user


  def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(username: user_attributes[:username]) unless user_attributes[:username].blank?
  end



  # def my_username
  #   self.user.username
  # end


  # def user_attributes=(user_attributes)
  #   # user_attributes.values.each do |attribute|
  #     self.user = User.find_or_create_by(username: user_attributes[:username]) unless user_attributes[:username].blank?
  #     # unless !attribute["username"].blank?
  #     #   self.user = User.find_or_create_by(username: attribute[username])
  #     # end
  #   # end
  # end
  
end
