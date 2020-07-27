class AddAdmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email = 'fake_admin@domain.com'
      u.password = 'adminpassword'
      u.admin_role = true
    end
  end
end
