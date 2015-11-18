#!/usr/bin/env sh

TEX_FILE="resume.tex"
TMP_FILE="Yihong-Resume.tex"
OBJECTIVE=$(echo $* | sed -e 's/[\/&]/\\&/g')

sed -e 's/ *\% *\\quote/\\quote/g' -e "s/XXX/${OBJECTIVE}/g" ${TEX_FILE} > ${TMP_FILE}

latexmk --pdf ${TMP_FILE}
latexmk -c
rm ${TMP_FILE}
