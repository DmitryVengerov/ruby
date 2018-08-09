
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'path/to/dbfile'
)

User.select(:id, :email, :created_at)

User.limit(3)

User.offset(5)

User.order(:email)

User.where("created_at > ?", Time.now - 1.day)

User.select(:id, :email, :created_at).order(:email).limit(2)
