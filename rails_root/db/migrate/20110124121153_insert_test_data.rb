class InsertTestData < ActiveRecord::Migration
  def self.up
    return if RAILS_ENV == 'production'
    
    user = User.create!(:email => 'user@test.com', :password => 'password')
    user.create_plan!((Date.today - 10), ['Gym', 'Drawing', 'Djembe'])
    
    User.create!(:email => 'empty.user@test.com', :password => 'password')
  end

  def self.down
  end
end
