#!/bin/bash

gcloud compute disks create cassandra-disk-0 --size=200GB
gcloud compute disks create cassandra-disk-1 --size=200GB
gcloud compute disks create cassandra-disk-2 --size=200GB

kubectl create -f cassandra-storage-class.yml
kubectl create -f cassandra-peer-service.yml
kubectl create -f cassandra-service.yml
kubectl create -f cassandra-stateful-set.yml
