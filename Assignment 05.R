# Assignment-05

if (!require("data.table")) install.packages("data.table")
library("data.table")

ptm <- proc.time()
header <- read.table("CPIAUCSL.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("CPIAUCSL.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME

class(DF)
typeof(DF
)
str(DF)
names(DF)

View(DF)
str(DF)

