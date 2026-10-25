#!/bin/sh
while :; do
  t=$(date +%s)
  echo "$t status=error latency_ms=$((RANDOM%500+100)) throughput_rps=$((RANDOM%50+10)) queue_depth=$((RANDOM%20)) gpu_util=$((RANDOM%100))"
  sleep 2
  t=$(date +%s)
  echo "$t status=success latency_ms=$((RANDOM%200+20)) throughput_rps=$((RANDOM%100+50)) queue_depth=$((RANDOM%5)) gpu_util=$((RANDOM%100))"
  sleep 2
done >> status.log
