#!/bin/bash

# turn on bash's job control
set -m

function init() {
  echo "[MongoDB] checking service..."
  sleep 1.5
  {
    # try
    mongo --eval 'print("OK");'
  } || {
    # catch
    init
    return
  }
  echo "[MongoDB] service ready"
  js_script='/usr/local/share/mongo/init.js'
  for (( i=1; ; i++ )); do
    db_name="$(eval echo "\$MONGO_DB_${i}_NAME")"
    db_user="$(eval echo "\$MONGO_DB_${i}_USER")"
    db_pwd="$(eval echo "\$MONGO_DB_${i}_PASSWORD")"
    if [ "${db_name}" = '' ] || [ "${db_user}" = '' ]; then
      break
    fi
    mongo --eval "const db_name='${db_name}'; const db_user='${db_user}'; const db_pwd='${db_pwd}'; " "${js_script}"
    echo "[MongoDB] created: db '${db_name}'; user '${db_user}'"
  done
}

# Start the primary process and put it in the background
mongod &

# Start the initialization process
init

# now we bring the primary process back into the foreground
# and leave it there
fg %1
