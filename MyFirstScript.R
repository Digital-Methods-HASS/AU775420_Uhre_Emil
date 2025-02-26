
rooms <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3, 1, 7, 2, 1, NA, 1, 1, 3)

# 1)
rooms_nas_eliminated <- rooms[!is.na(rooms)]
rooms_nas_eliminated
rooms_nas_eliminated[rooms_nas_eliminated>2]
length(rooms_nas_eliminated[rooms_nas_eliminated>2])
# 13 elements are greater than 2

# 2)
class(rooms)
# The function shows "numeric"

# 3)
median(rooms_nas_eliminated)
# The median of the "rooms" vector is 2

# 4)
download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv",
  mode = "wb"
)

install.packages("tidyverse")
install.packages("here")
library(tidyverse)

# 5)-Kongerækken
kongerækken <- read_csv2("data/Kongerækken-csv.csv",na="NA")
gns_regtid <- mean(na.omit(kongerækken$`Regerings år i alt`))
gns_regtid
# The average reign is 19.96 years

med_regering <- median(na.omit(kongerækken$`Regerings år i alt`))
med_regering
# The median of reign is 18,5 years