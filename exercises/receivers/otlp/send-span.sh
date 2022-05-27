#!/bin/bash

curl -v "http://localhost:4318/v1/traces"  -H 'Content-type: application/json' --data-raw \
  "{\"resourceSpans\":\
    [{\"resource\":\
      {\"attributes\":[{\"key\":\"service.name\",\"value\":{\"stringValue\":\"Some Service\"}}\
    ]},\
  \"scopeSpans\":[\
    {\"scope\":{},\
     \"spans\":[\
      {\"traceId\":\"0000000000000000ffffff$(date +%s)\",\
       \"spanId\":\"ffffff$(date +%s)\",\
       \"parentSpanId\":\"\",\
       \"name\":\"console-test\",\
       \"kind\":\"SPAN_KIND_SERVER\",\
       \"startTimeUnixNano\":\"$(date +%s)000000000\",\
       \"endTimeUnixNano\":\"$(date +%s)010000000\",\
       \"attributes\":[\
         {\"key\":\"http.status_code\",\"value\":{\"stringValue\":\"500\"}},\
         {\"key\":\"test\",\"value\":{\"stringValue\":\"aaaaa-bbb\"}},\
         {\"key\":\"net.host.ip\",\"value\":{\"stringValue\":\"192.168.1.1\"}},\
         {\"key\":\"net.host.port\",\"value\":{\"intValue\":\"3333\"}},\
         {\"key\":\"net.peer.ip\",\"value\":{\"stringValue\":\"172.19.0.80\"}},\
         {\"key\":\"net.peer.port\",\"value\":{\"intValue\":\"4444\"}}\
      ],\
      \"status\":{}}]}]}]}"

