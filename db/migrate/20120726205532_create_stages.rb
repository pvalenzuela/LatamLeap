class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    Stage.create :name => 'Start Up (No Revenue to $500K in Revenue & No Venture Funding)'
    Stage.create :name => 'Rump Up ($500K to $1 Million in Revenue & No Greater Than Round A Funded)'
    Stage.create :name => 'Speed Up ($1 Million to $5 Million in Revenue & Some initial governement or private funds)'
    Stage.create :name => 'Established (Greater Than $5 Million in Revenue & Potentially Funded By VC\'s or Angels)'
        
  end
end
