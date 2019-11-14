# Assignment-05

ptm <- proc.time()
header <- read.table("CPIAUCSL.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("CPIAUCSL.csv", skip=1, sep=",",
                  header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME