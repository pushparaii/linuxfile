#!/bin/bash

# Check if a city name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <city>"
    exit 1
fi

# Get the weather for the specified city
CITY=$1
echo "Fetching weather for $CITY..."

# Fetch and display weather using wttr.in
curl -s "wttr.in/$CITY?format=3"

# Optionally, display more detailed weather information
echo "For more detailed information, run:"
echo "curl wttr.in/$CITY"