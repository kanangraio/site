#!/usr/bin/env bash

readonly HEADER="header"
readonly FOOTER="footer"
readonly DIR="../html"


cd inc
mkdir -p ${DIR}
for INC in $(ls *.inc); do
  FILE=$(cut -d. -f1 <<< ${INC})
  HTML=${FILE}.html
  echo "Generating ${HTML}"
  cat ${HEADER} ${INC} ${FOOTER} > ${DIR}/${HTML}
done

ls -l ${DIR}

exit 0
