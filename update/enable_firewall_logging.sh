PROJECT_LIST=""

for project in $PROJECT_LIST; do
    gcloud config set project $project
    for rule_name in $(gcloud compute firewall-rules list --format='value(name)'); do
        gcloud compute firewall-rules update $rule_name --enable-logging
    done
done
