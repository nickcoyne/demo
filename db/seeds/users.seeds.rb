User.where(email: 'admin@demo.com').first_or_create do |user|
  user.first_name = 'Admin'
  user.last_name = 'User'
  user.password = 'admin'
  user.save
end
