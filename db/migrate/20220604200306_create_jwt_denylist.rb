class CreateJwtDenylist < ActiveRecord::Migration[7.0]
  def change
    create_table :jwt_denylists do |t|
      t.string :jti, null: false, index: { unique: true }
      t.datetime :exp, null: false

    end
  end
end
