class RenameScoreToPercentageInWine < ActiveRecord::Migration[7.0]
  def change
    change_table :wines do |t|
      t.rename :score, :percentage
   
    end
  end
end
