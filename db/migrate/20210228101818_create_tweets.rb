class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string      :listener_name
      t.string      :listener_sex
      t.string      :listener_age
      t.string      :listener_address
      t.text        :listener_image
      
      t.string      :program_name
      t.string      :corner_name
      t.text        :theme
      t.text        :text

      t.timestamps
    end
  end
end
