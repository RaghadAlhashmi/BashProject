#!/bin/bash

declare -A parked_cars
declare -A time_parked
declare -i total_spots=20
declare -i occupied_spots=0
declare -a available_spots=($(seq 1 $total_spots))
ticket_counter=0

# Function for making ticket IDs:
generate_ticket_id() {
  ticket_counter=$((ticket_counter + 1))
  echo "Ticket$ticket_counter"
}

# Function to display available parking spots
show_available_spots(){
echo "Available parking spots: ${available_sspots[@]}"
}

# Function to prompt user to select a parking spot
select_parking_spot(){
read -p "Selecta parking spot: " selected_spot
if [[ " ${available_spots[@]} " = = " $selected_spot " ]]; then
     park_car "$car_number"
else
    echo "Invalid parking spot. Please select from the available spots."
fi
}

park_car() {
  car=$1
  ticked_id=$(generate_ticket_id)
  parked_cars[$ticket_id]=$car
  time_parked[$ticket_id]=$(date +%s)
  occupied_spots=$((occupied_spots + 1))
  available_spots=(${availble_spots[@]/$occupied_Spots)
  echo "Parked car: $car"
  echo "Ticket ID: $ticket_id"
}
    
