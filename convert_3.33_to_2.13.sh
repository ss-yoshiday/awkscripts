#!/bin/bash

OPTION=$1

if [ -z "${OPTION}" ]; then
  echo "引数にjtlファイルを指定してください。"
  exit 1
fi

for file in `ls -1 ${OPTION}`; do

  echo "${file}"
  JTL_FILE=${file}
  JTL_TEMP="tmp_${JTL_FILE}"
  JTL_CONV="c_${JTL_FILE}"

  # number of の行を除外する
  grep -v "number of" ${JTL_FILE} > ${JTL_TEMP}

  awk -v "jtl=${JTL_FILE}" -OFS',' '{$11=""; $15=""; $16="";$14=$14 "," jtl; print }' ${JTL_TEMP} > ${JTL_CONV} 
  rm -rf ${JTL_TEMP}

done

