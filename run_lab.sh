#!/bin/bash
# Convenience script to run Vector Database labs

if [ $# -eq 0 ]; then
    echo "Usage: ./run_lab.sh <lab_number>"
    echo "Example: ./run_lab.sh 1"
    echo ""
    echo "Available labs:"
    echo "  1 - Search Problem (Tia's frustration)"
    echo "  2 - Embeddings Demo (Words to numbers)"
    echo "  3 - Similarity Search (Math magic)"
    echo "  4 - ChromaDB Vector Database (Production system)"
    exit 1
fi

source venv/bin/activate

case $1 in
    1)
        echo "Starting Lab 1: Search Problem..."
        python3 lab1_search_problem.py
        ;;
    2)
        echo "Starting Lab 2: Embeddings Demo..."
        python3 lab2_embeddings_demo.py
        ;;
    3)
        echo "Starting Lab 3: Similarity Search..."
        python3 lab3_similarity_search.py
        ;;
    4)
        echo "Starting Lab 4: ChromaDB Vector Database..."
        python3 lab4_vector_database.py
        ;;
    *)
        echo "Invalid lab number. Please choose 1-4."
        exit 1
        ;;
esac
