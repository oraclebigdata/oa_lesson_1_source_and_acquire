Sourcing and Acquiring
==============================

Datasets and example code for Lesson 1 in Oracle Academy's Data Science Bootcamp.  All commands for starting and testing flume are stored in **commands**.  The configuration for the Flume agent is in **flume_example.conf**.  XML records for the example are in **example.xml** and the HiveQL statements for defining and searching an external table over the example data are in **hive_examples.hql**.

For this lesson, the sequence of events is:
1. Examine or modify **flume_example.conf** to configure your Flume agent.
2. Use the commands in **commands** and data in **example.xml** to
--* Start a flume agent
--* Use netcat (nc) to send lines of XML data from the sample file to HDFS
3. Use the HiveQL statements in **hive_examples.hql** to search and transform the data in HDFS.
