# change credentials as needed except for REPLICATION_USER
# if you change REPLICATION_USER also change chenge the data in configmap under pg_hba.conf

kubectl create secret generic postgresql \
  --from-literal POSTGRES_USER="postgresadmin" \
  --from-literal POSTGRES_PASSWORD='admin123' \
  --from-literal POSTGRES_DB="postgresdb" \
  --from-literal REPLICATION_USER="replicationuser" \
  --from-literal REPLICATION_PASSWORD='replicationPassword' \
  --from-literal POSTGRES_HOST='postgres-svc' \
  -n default