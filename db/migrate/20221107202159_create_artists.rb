# The change method is the primary way of writing migrations. It works for the majority of cases, where Active Record knows how to reverse the migration automatically. In addition to change.
# Active Record also provides an up method to define the code to execute when the migration is run
#  And a down method to define the code to execute when the migration is rolled back. Think of it like "do" and "undo."

class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
      # the id column is generated automatically for every table! no need to specify it here.
    end
  end
end


#  You can also use this Rake task to see the status of your migrations: bundle exec rake db:migrate:status
# You'll get something like: 

#  Status   Migration ID    Migration Name
# --------------------------------------------------
# up     20221107202159  Create artists

# If the status is up, that means this migration is active: it's been run, and has updated the database successfully!