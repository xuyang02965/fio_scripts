
dir <- "./"
poly=1
hist=1
ppi <- 300

# graph writes  by 3 user loads
# for each user load graph the different blocksizes

#testname="write"
#  for (bs in c("4K", "8K","16K", "64K", "128K") ){
#    file <- paste(testtype,testname,"bs",bs,sep="_")
#    file <- paste(dir,file,".png",sep="")
#    cat("file=",file,"\n")
#    png(filename=file, width=6*ppi, height=6*ppi, res=ppi )
#    graphit(m, i_name=testname, i_bs=bs,i_title=paste(testtype,testname,"bs=",bs),i_hist=hist,i_poly=poly)
#    dev.off()
#  }

for (testname in c("randread", "write", "read", "randrw")) {
  for (bs in c("4K", "8K","16K", "64K", "128K") ){
    file <- paste(testtype,testname,"bs",bs,sep="_")
    file <- paste(dir,file,".png",sep="")
    cat("file=",file,"\n")
    png(filename=file, width=6*ppi, height=6*ppi, res=ppi )
    graphit(m, i_name=testname, i_bs=bs,i_title=paste(testtype,testname,"bs=",bs),i_hist=hist,i_poly=poly)
    dev.off()
  }
}

#testname="read"
#  for (bs in c("4K", "8K","16K", "64K", "128K") ){
#    file <- paste(testtype,testname,"bs",bs,sep="_")
#    file <- paste(dir,file,".png",sep="")
#    cat("file=",file,"\n")
#    png(filename=file, width=6*ppi, height=6*ppi, res=ppi )
#    graphit(m, i_name=testname, i_bs=bs,i_title=paste(testtype,testname,"bs=",bs),i_hist=hist,i_poly=poly)
#    dev.off()
#  }

#  file <- paste(testtype,testname,"bs_1M",sep="_")
#  file <- paste(dir,file,".png",sep="")
#  cat("file=",file,"\n")
#  png(filename=file, width=6*ppi, height=6*ppi, res=ppi )
#  graphit(m, i_name=testname, i_bs="1M",i_title=paste(testtype,testname,"bs=1M"),i_hist=hist,i_poly=poly)
#  dev.off()


