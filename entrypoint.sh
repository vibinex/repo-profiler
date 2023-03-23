#!/bin/sh -l
echo "$GITHUB_REPOSITORY"
echo "$GITHUB_REPOSITORY_OWNER"
# git config --global --add safe.directory /github/workspace
# devprofiler -- docker /github/workspace
# timestamp=$(date +%s)
# filename="${timestamp}-devprofile.jsonl.gz"
# mv devprofile.jsonl.gz "${filename}"
# curl -F "file=@${filename}"  https://gcscruncsql-k7jns52mtq-el.a.run.app/upload