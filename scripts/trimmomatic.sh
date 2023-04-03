#!/usr/bin/bash
#                       ----------------
#                       |  TRIMMOMATIC |
#                       ----------------
#             ---------For paired end reads---------



mkdir -p $OutDir

cd $OutDir

if [ $4 ]; then
  ADAPTER_FILE=$4
  trimmomatic PE -threads 8  $1 $2 \
                         `basename $3 .fastq`_trimmed.fastq `basename $4 .fastq`_trimmed_un.fastq \
                         `basename $5 .fastq`_trimmed.fastq `basename $6 .fastq`_trimmed_un.fastq \
                         ILLUMINACLIP:$7:2:30:10 \
                         MINLEN:40

else
  trimmomatic PE -threads 8  $Read_F $Read_R \
                         `basename $Read_F .fastq`_trimmed.fastq `basename $Read_F .fastq`_trimmed_un.fastq \
                         `basename $Read_R .fastq`_trimmed.fastq `basename $Read_R .fastq`_trimmed_un.fastq \
                         MINLEN:40
  exit
fi



#for f1 in ./Secuencias/*_1.fastq
#do ### Cuidado con la extensión (gz o fastq)
  #f2=${f1/%_1.fastq/_2.fastq}
  #trimmomatic PE -threads 8 $f1 $f2 \
                            #./trimmomatic_pe/`basename $f1 .fastq`.trimmed.fastq ./trimmomatic_pe/`basename $f1 .fastq`.trimmed_un.fastq \
                            #./trimmomatic_pe/`basename $f2 .fastq`.trimmed.fastq ./trimmomatic_pe/`basename $f2 .fastq`.trimmed_un.fastq \
              #MINLEN:50 AVGQUAL:20
  #echo $f1 $f2
#done
### Fastqc de nuevo
#fastqc ./trimmomatic_pe/*.fastq -o ./fastqc_trimmed/
