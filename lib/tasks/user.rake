namespace :user do
  task create_user: :environment do
    puts "===Start creating===="
    User.create! email: "admin@gmail.com", name: "Admin", password: "12345678"
    puts "=== Creating successfully ==="
  end
end
