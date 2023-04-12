projects_list= ""

while IFS="" read -r p || [ -n "$p" ]
do
  gcloud storage ls --project=$p --quiet --verbosity=none; 
done < $projects_list