module ManageIQ
  module Messaging
    module Kafka
      module Topic
        private

        def publish_topic_impl(options)
          raw_publish(true, *topic_for_publish(options))
        end

        def subscribe_topic_impl(options, &block)
          topic = address(options)
          persist_ref = options[:persist_ref]

          if persist_ref
            consumer = topic_consumer(persist_ref)
            consumer.subscribe(topic, :start_from_beginning => false)
            consumer.each_message(:automatically_mark_as_processed => auto_ack?(options)) do |message|
              process_topic_message(topic, message, &block)
            end
          else
            kafka_client.each_message(:topic => topic, :start_from_beginning => false) do |message|
              process_topic_message(topic, message, &block)
            end
          end
        end
      end
    end
  end
end
