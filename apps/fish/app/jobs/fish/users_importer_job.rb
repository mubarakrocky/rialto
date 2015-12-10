module Fish
  class UsersImporterJob < ActiveJob::Base
    queue_as :default

    def perform(*args)
      Logistic::User.all.each do |user|
        name    = user.name
        number  = user.number
        address = user.address
        
        spree_user = Spree::User.find_by_login(number)
        
        if spree_user.nil?
          spree_user = Spree::User.create!(
            :login => number,
            :name  => name,
            :mobile => number,
            :email => "#{number}@fishcart.in",
            :password => '12345678'
          )
          spree_user.role_users << Spree::RoleUser.create(user_id: spree_user.id, role_id: Spree::Role.find_by_name("user").id)
        end
        
      end
    end
  end
end
