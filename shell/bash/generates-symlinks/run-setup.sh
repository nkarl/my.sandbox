SORC_CONFIGS="./test-SORC-config-dir"
DEST_CONFIGS="./test-DEST-config-dir"

# clear test directory
if [[ -d ${SORC_CONFIGS} ]]; then
  rm -r ${SORC_CONFIGS}
fi

if [[ -d ${DEST_CONFIGS} ]]; then
  rm -r ${DEST_CONFIGS}
fi

# set up test directory

if [[ ! -d ${SORC_CONFIGS} ]]; then
  mkdir ${SORC_CONFIGS}
  mkdir "${SORC_CONFIGS}/app-1" \
        "${SORC_CONFIGS}/app-2" \
        "${SORC_CONFIGS}/app-3"
  touch "${SORC_CONFIGS}/app-1/init.txt" \
        "${SORC_CONFIGS}/app-2/init.txt" \
        "${SORC_CONFIGS}/app-3/init.txt"
fi

if [[ ! -d ${DEST_CONFIGS} ]]; then
  mkdir ${DEST_CONFIGS}
fi
