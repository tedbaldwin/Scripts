
#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-launch-output.txt
#BSUB -e data-launch-error.txt
#BSUB -J Data_dwnld_Treutlein_Quake
#BSUB -N

cd /scratch/cluster/monthly/rbaldwin

wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033943/SRR1033943.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033944/SRR1033944.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033945/SRR1033945.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033946/SRR1033946.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033947/SRR1033947.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033948/SRR1033948.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033949/SRR1033949.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033950/SRR1033950.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033951/SRR1033951.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033952/SRR1033952.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033953/SRR1033953.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033954/SRR1033954.sra 