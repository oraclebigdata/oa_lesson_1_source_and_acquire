#! /bin/bash

#Command list for lesson 1

#1 start the flume agent -- background flume using & to run the example in a single terminal

#Terminal 1: run flume
flume-ng agent -n hdfs-agent -f ./flume_example.conf

#Terminal 2: send record batches from example.xml to HDFS
#first 20 records
head -n 20 example.xml | nc localhost:11111
#next 20
sed '20,40!d' example.xml | nc localhost:11111
#remainder of file
head -n -40 example.xml | nc localhost:11111

#Operate on XML data in Hive
#Either, run commands in hive_examples.hql manually
#Or
hive -f ./hive_examples.hql