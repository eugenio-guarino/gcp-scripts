#!/bin/bash

PROJECT_ID=""
gcloud config set project $PROJECT_ID

db_names=($(gcloud sql instances list --format="value(name)" --quiet))

for i in "$db_names"; do
gcloud beta sql instances patch "$db_names" --update-labels=db="$db_names" --quiet; 
done