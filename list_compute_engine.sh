projects_list = ""

while IFS="" read -r p || [ -n "$p" ]
do
  gcloud compute instances list --project=$p --quiet --format="value(name)" --verbosity=none; 
done < $projects_list