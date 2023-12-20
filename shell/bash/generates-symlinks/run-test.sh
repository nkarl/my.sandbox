SORC_CONFIGS="./test-SORC-config-dir"
DEST_CONFIGS="./test-DEST-config-dir"

# core algorithm
for item in ${SORC_CONFIGS}/*/; do
  entry=$(basename $item)
  ln -s ${item} ${DEST_CONFIGS}/${entry}
done
