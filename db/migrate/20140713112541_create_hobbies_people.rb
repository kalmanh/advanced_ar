class CreateHobbiesPeople < ActiveRecord::Migration
  def change
    create_table :hobbies_people, id:false do |t|
      t.references :hobby, index: true
      t.references :person, index: true
    end
  end
end
