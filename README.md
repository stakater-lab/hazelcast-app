# Hazelcast-App

A Hazelcast App that connects with hazelcast already running at `hazelcast-service`.

The app exposes three endpoints:

- To add data just send request to `/hazelcast/write-data` which expects two request parameters named `key` and `value`.
- To fetch data just send request to `/hazelcast/read-data` which expects one request parameters named `key`.
- To fetch all data just send request to `/hazelcast/read-all-data` without any additional parameters.

All the data is handled inside a map named `my-map`.
