# frozen_string_literal: true

require 'kafka'

kafka = Kafka.new(['localhost:9092'])

kafka.each_message(topic: 'test-topic') do |message|
  puts "Received: #{message.offset} - #{message.value}"
end
