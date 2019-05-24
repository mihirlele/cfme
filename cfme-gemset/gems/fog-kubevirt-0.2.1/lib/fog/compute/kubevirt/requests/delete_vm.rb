module Fog
  module Compute
    class Kubevirt
      class Real
        def delete_vm(name, namespace)
          kubevirt_client.delete_virtual_machine(name, namespace)
        end
      end

      class Mock
        def delete_vm(name)
        end
      end
    end
  end
end
