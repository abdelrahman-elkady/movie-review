class ChangeRateInReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :rate, :double
  end
end
