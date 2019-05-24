class ManageIQ::Providers::Google::Inventory::Collector < ManageIQ::Providers::Inventory::Collector
  require_nested :CloudManager
  require_nested :NetworkManager

  def initialize(_manager, _target)
    super
  end

  def connection
    @connection ||= manager.connect
  end
end
