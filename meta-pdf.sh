#!/bin/bash

# Petit script qui utilise pdfinfo pour extraire de manière récursive des infos sur des PDFs dans un csv.
# Il est nécessaire que pdfinfo soit disponible (e.g : brew install xpdf sous OS X).
# [usage]: ./meta-pdf.sh /path/to/folder/of/pdfs [csv_file_name]

[[ -z "$2" ]] && CSV_FILE="pdf_folders_to_csv.csv" || CSV_FILE="$2"
echo "Filename;Author;Producer;ModDate;Pages;Format" > "${CSV_FILE}";

while read -r line
do
  #echo $line
  NOMBRE_PAGE=$(pdfinfo "$line" | grep Pages | awk '{print $2}')
  FORMAT=$(pdfinfo "$line" | grep "Page size" | cut -d ':' -f2 | sed 's/^ *//g')
  AUTHOR=$(pdfinfo "$line" | grep "Author" | cut -d ':' -f2 | sed 's/^ *//g')
  PRODUCER=$(pdfinfo "$line" | grep "Producer" | cut -d ':' -f2 | sed 's/^ *//g')
  MODDATE=$(pdfinfo "$line" | grep "ModDate" | cut -d ':' -f2 | sed 's/^ *//g')
  #JAVASCRIPT=$(pdfinfo $line | grep "JavaScript" | cut -d ':' -f2 | sed 's/^ *//g')
  #DOSSIER=$(dirname $line | tr -d '.' | sed 's/\//\ /g')
  FICHIER=$(basename "$line")
  echo "${FICHIER};${AUTHOR};${PRODUCER};${MODDATE};${NOMBRE_PAGE};${FORMAT}" >> "${CSV_FILE}"
done <<< "$(find $1 -type f -iname '*.pdf')"

#cat $CSV_FILE
csvlook -d ";" "${CSV_FILE}"
