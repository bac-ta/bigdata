package producer

import (
	"fmt"
	"github.com/confluentinc/confluent-kafka-go/kafka"
	"os"
)

func initProducer() *kafka.Producer {
	p, err := kafka.NewProducer(&kafka.ConfigMap{
		"bootstrap.servers": "host1:9092,host2:9092",
		"client.id":         os.Hostname(),
		"acks":              "all",
	})
	if err != nil {
		fmt.Printf("Failed to create producer: %s\n", err)
		os.Exit(1)
	}
	return p
}
func asyncWrite(value string) {
	delivery_chan := make(chan kafka.Event, 10000)
	p := initProducer()
	err := p.Produce(&kafka.Message{
		TopicPartition: kafka.TopicPartition{Topic: "entropy-backend", Partition: kafka.PartitionAny},
		Value:          []byte(value)},
		delivery_chan,
	)
	if err != nil {
		fmt.Printf("Failed to produce: %s\n", err)
		os.Exit(1)
	}
	e := <-delivery_chan
	m := e.(*kafka.Message)

	if m.TopicPartition.Error != nil {
		fmt.Printf("Delivery failed: %v\n", m.TopicPartition.Error)
	} else {
		fmt.Printf("Delivered message to topic %s [%d] at offset %v\n",
			*m.TopicPartition.Topic, m.TopicPartition.Partition, m.TopicPartition.Offset)
	}

	close(delivery_chan)
}

func syncWrite(value string) {
	delivery_chan := make(chan kafka.Event, 10001)
	p := initProducer()
	err := p.Produce(&kafka.Message{
		TopicPartition: kafka.TopicPartition{Topic: "entropy-backend", Partition: kafka.PartitionAny},
		Value:          []byte(value)},
		delivery_chan,
	)
	if err != nil {
		fmt.Printf("Failed to produce: %s\n", err)
		os.Exit(1)
	}
	e := <-delivery_chan
	m := e.(*kafka.Message)
	if m.TopicPartition.Error != nil {
		fmt.Printf("Delivery failed: %v\n", m.TopicPartition.Error)
	} else {
		fmt.Printf("Delivered message to topic %s [%d] at offset %v\n",
			*m.TopicPartition.Topic, m.TopicPartition.Partition, m.TopicPartition.Offset)
	}
	p.Flush(500)

}
