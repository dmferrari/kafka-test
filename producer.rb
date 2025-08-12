# frozen_string_literal: true

require 'kafka'

kafka = Kafka.new(['localhost:9092'])
producer = kafka.producer

producer.produce('Hello from ruby!', topic: 'test-topic')
producer.deliver_messages
puts 'Message sent!'
