Vmdb::Gettext::Domains.add_domain(
  'ManageIQ_Providers_Kubevirt',
  ManageIQ::Providers::Kubevirt::Engine.root.join('locale').to_s,
  :po
)
