class CreateSchoolclasses < ActiveRecord::Migration[5.0]
  def change
    create_table :schoolclasses do |t|

      t.timestamps
    end
  end
end
