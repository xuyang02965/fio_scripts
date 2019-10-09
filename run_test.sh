#!/bin/bash   

TEST_INTERVAL=10
WORK_DIR=$1
OUTPUT_DIR="$2/"${WORK_DIR//\//_}
echo "Working dir is $WORK_DIR"
[ -e ${WORK_DIR} ] || mkdir -p ${WORK_DIR}
echo "Output dir is $OUTPUT_DIR"
[ -e ${OUTPUT_DIR} ] || mkdir -p ${OUTPUT_DIR}

FILESZ=1024
OPTYPES=("readrand" "read" "write" "randrw")
BLKSZ=(4 8 16 64 128)
USER_NUM=(1 4)

for optype in ${OPTYPES[*]};
do
    for blksz in ${BLKSZ[*]};
    do
        for usrnum in ${USER_NUM[*]};
        do
           #echo $optype $blksz $usrnum 
           ./fio.sh -b /home/ksp/code/fio/fio-2.0.7/fio -o ${OUTPUT_DIR} -w ${WORK_DIR} -t ${optype}  -l ${blksz} -m ${FILESZ} -u ${usrnum} -s ${TEST_INTERVAL} -f 
        done
    done
done

