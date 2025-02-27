#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    if [[ $num -lt 2 ]]; then
        return 1
    fi
    for ((i=2; i*i<=num; i++)); do
        if [[ $((num % i)) -eq 0 ]]; then
            return 1
        fi
    done
    return 0
}

# High CPU operation: Calculate prime numbers up to a large limit
limit=100000
for ((n=2; n<=limit; n++)); do
    if is_prime $n; then
        echo "$n is a prime number"
    fi
done
