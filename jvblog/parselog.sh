#!/bin/bash

if [[ $1 -eq 0 ]];
then
echo "Usage: ./parselog <logfile>";
exit 1;
fi


cat $1 | jq -r '[.current_timestamp,.bit_rate_download, .bit_rate_upload, .cpu_usage, .used_memory] | @tsv'
