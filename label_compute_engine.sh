#!/bin/bash

PROJECT_ID=""
gcloud config set project $PROJECT_ID

vm_names=($(gcloud compute instances list --format="value(name)" --project=$PROJECT_ID --quiet))
vm_uris=($(gcloud compute instances list --uri --project=$PROJECT_ID --quiet))

for i in "${!vm_uris[@]}"; do

gcloud compute instances add-labels "${vm_uris[$i]}" --labels=vm="${vm_names[$i]}" --quiet; 
done