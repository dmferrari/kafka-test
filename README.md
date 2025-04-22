# Kafka Test with Ruby

This repository demonstrates a simple Kafka producer and consumer setup using Ruby. It uses Docker Compose to run Kafka and Zookeeper services locally.

## Prerequisites

- Ruby 3.2.2 (see `.ruby-version`)
- Docker and Docker Compose

## Setup

1. Install the required Ruby gems:

```sh
   bundle install
```

2. Start Kafka and Zookeeper using Docker Compose:

```sh
docker-compose up
```

## Usage

### Producer

Send a message to the `test-topic` Kafka topic:

```sh
ruby producer.rb
```

### Consumer

Start the consumer to listen for messages on the `test-topic`:

```sh
ruby consumer.rb
```

## Files

- `producer.rb`: Sends a message to Kafka.
- `consumer.rb`: Receives and prints messages from Kafka.
- `docker-compose.yml`: Defines Kafka and Zookeeper services.
- `Gemfile`: Ruby dependencies.
- `.ruby-version`: Ruby version pin.

## Notes

- Make sure Kafka and Zookeeper are running before running the Ruby scripts.
- The Kafka broker is configured to listen on `localhost:9092`.
