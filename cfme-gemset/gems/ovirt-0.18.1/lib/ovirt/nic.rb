module Ovirt
  class Nic < Base
    self.top_level_strings = [:name, :interface]
    self.top_level_objects = [:vm, :network]

    def self.parse_node_extended(node, hash)
      parse_first_node(node, :network, hash, :node      => [:name])
      parse_first_node(node, :mac,     hash, :attribute => [:address])
    end

    def attributes_for_new_nic
      attrs = attributes.dup
      attrs[:network_id] = self[:network][:id]
      attrs
    end

    def apply_options!(options)
      update! do |xml|
        xml.name options[:name]                     if options[:name]
        xml.interface options[:interface]           if options[:interface]
        xml.network(:id => options[:network_id])    if options[:network_id]
        xml.mac(:address => options[:mac_address])  if options[:mac_address]
      end
    end
  end
end
