class Items < ActiveRecord::Migration[6.1]
  
    def change
      create_table :items do |t|

        t.string :itemname
        t.string :desc
        
      end
    
  end
end
