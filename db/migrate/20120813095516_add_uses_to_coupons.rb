class AddUsesToCoupons < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :uses, :integer, default: 0
  end
end
