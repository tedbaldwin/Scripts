#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-dwnld_Treutlein_Quake-output.txt 
#BSUB -e data-dwnld_Treutlein_Quake-error.txt
#BSUB -J Data_dwnld_Treutlein_Quake
#BSUB -N


#ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/{SRR}/<first 6 characters of accession>/<accession>/<accession>.sra


#cd /scratch/cluster/monthly/rbaldwin

filename="SRR_Acc_List.txt"

while read line
do
  id=$(cut -b 1-6 <<< "$line")
  url=$"ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/$id/$line/$line.sra"
  echo "wget $url & " >> launch.sh
done < "$filename"

