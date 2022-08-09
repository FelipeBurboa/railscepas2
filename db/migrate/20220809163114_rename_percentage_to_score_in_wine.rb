class RenamePercentageToScoreInWine < ActiveRecord::Migration[7.0]
  def change
    change_table :wines do |t|
      t.rename :percentage, :score
    end
  end
end
