class AddVmRawPowerState < ActiveRecord::Migration[4.2]
  def up
    add_column :vms, :raw_power_state, :string
  end

  def down
    remove_column :vms, :raw_power_state
  end
end
