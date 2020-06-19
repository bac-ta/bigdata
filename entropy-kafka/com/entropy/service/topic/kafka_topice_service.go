package topic

import (
	"context"
	"fmt"
	"github.com/confluentinc/confluent-kafka-go/kafka"
	"os"
	"time"
)

func CreateTopic(p *kafka.Producer, topic string) {
	topicCreate, err := kafka.NewAdminClientFromProducer(p)
	if err != nil {
		fmt.Printf("Failed to create new admin client from producer: %s", err)
		os.Exit(1)
	}

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	maxDuration, err := time.ParseDuration("60s")
	if err != nil {
		fmt.Printf("Parser duration (60s): %s", err)
		os.Exit(1)
	}
	results, err := topicCreate.CreateTopics(
		ctx,
		/* Multiple topics can be created simultaneously
		by providing more TopicSpecification structs here.*/
		[]kafka.TopicSpecification{{
			Topic:             topic,
			NumPartitions:     3,
			ReplicationFactor: 3}},
		// Admin options
		kafka.SetAdminOperationTimeout(maxDuration))

	if err != nil {
		fmt.Printf("Admin client request error: %v\n", err)
		os.Exit(1)
	}
	for _, result := range results {
		if result.Error.Code() != kafka.ErrNoError && result.Error.Code() != kafka.ErrTopicAlreadyExists {
			fmt.Println("Failed to create topic: %s", result.Error)
			os.Exit(1)
		}
		fmt.Printf("%v\n", result)
	}
	topicCreate.Close()
}
