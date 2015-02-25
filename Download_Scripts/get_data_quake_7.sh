
#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-launch-output.txt
#BSUB -e data-launch-error.txt
#BSUB -J Data_dwnld_Treutlein_Quake
#BSUB -N

cd /scratch/cluster/monthly/rbaldwin

wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033920/SRR1033920.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033921/SRR1033921.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033922/SRR1033922.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033923/SRR1033923.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033924/SRR1033924.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033925/SRR1033925.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033926/SRR1033926.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033927/SRR1033927.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033928/SRR1033928.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033929/SRR1033929.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033930/SRR1033930.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033931/SRR1033931.sra 