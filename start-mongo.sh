#!/bin/bash

function init() {
  sleep 1.5
  js_script='/usr/local/share/mongo/init.js'
  for (( i=1; ; i++ )); do
    db_name="$(eval echo "\$MONGO_DB_${i}_NAME")"
    db_user="$(eval echo "\$MONGO_DB_${i}_USER")"
    db_pwd="$(eval echo "\$MONGO_DB_${i}_PASSWORD")"
    if [ "${db_name}" = '' ] || [ "${db_user}" = '' ]; then
      break
    fi
    echo "const db_name='${db_name}'; const db_user='${db_user}'; const db_pwd='${db_pwd}'; "
    mongo --eval "const db_name='${db_name}'; const db_user='${db_user}'; const db_pwd='${db_pwd}'; " "${js_script}"
  done
}

init &

mongod
