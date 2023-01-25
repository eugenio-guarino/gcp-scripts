#!/bin/bash

PROJECT_ID=""
gcloud config set project $PROJECT_ID

vm_uris=($(gcloud compute instances list --filter="name~insert-name-here*" --uri --project=$PROJECT_ID --quiet))

for i in "${!vm_uris[@]}"; do

gcloud compute instances delete "${vm_uris[$i]}" --quiet; 
done