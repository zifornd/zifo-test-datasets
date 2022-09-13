for x in *.fastq.gz; do 
  file="${x%%.*}" 
  echo "------- Processing for Sample: ${file} --------"
  seqtk sample -s100 $x 50000 | gzip > "${file}.fq.gz"
  echo "------- Complete for Sample: ${file} ----------"
done
