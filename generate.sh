#!/bin/bash

OLD_USER=cashpipeplusplus
NEW_USER=joeyparrish

PROJECT="$1"
LOCAL_PATH="$2"

URL_PATH=$(echo "$LOCAL_PATH" | sed -e 's/index.html$//')

mkdir -p $(dirname "$PROJECT/$LOCAL_PATH")

cat >"$PROJECT/$LOCAL_PATH" <<EOF
<!DOCTYPE html>
<meta charset="utf-8">
<title>Redirecting https://$OLD_USER.github.io/$PROJECT/$URL_PATH</title>
<meta http-equiv="refresh" content="0; URL=https://$NEW_USER.github.io/$PROJECT/$URL_PATH">
<link rel="canonical" href="https://$NEW_USER.github.io/$PROJECT/$URL_PATH">
EOF
