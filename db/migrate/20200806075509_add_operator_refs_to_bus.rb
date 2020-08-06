class AddOperatorRefsToBus < ActiveRecord::Migration[6.0]
  def change
    add_reference :buses, :operator, null: false, foreign_key: true
  end
end
