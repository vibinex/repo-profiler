#!/bin/sh -l
git config --global --add safe.directory /github/workspace
devprofiler -- docker /github/workspace
timestamp=$(date +%s)
filename="${timestamp}-devprofile.jsonl.gz"
mv devprofile.jsonl.gz "${filename}"
ls /github/workspace
ls /github/workspace/.git
# curl -F "file=@${filename}"  https://gcscruncsql-k7jns52mtq-el.a.run.app/upload