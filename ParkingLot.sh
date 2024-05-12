#!/bin/bash

declare -A parked_cars
declare -A time_parked
declare -i total_spots=20
declare -i occupied_spots=0
declare -a available_spots=($(seq 1 $total_spots))
ticket_counter=0

# Function for making ticket IDs:
ticket_id() {
  ticket_counter=$((ticket_counter + 1))
  echo "Ticket$ticket_counter"
}

