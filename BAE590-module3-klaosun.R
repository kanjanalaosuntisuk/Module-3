###Description: R script for BAE590 Module 3
###author: Kanjana Laosuntisuk
###Date created: 2019-09-04
###last modified: 2019-09-04

rm(list=ls())

install.packages("tidyverse")
library(tidyverse)

#To make a section in R script: code -> insert section
# testsection -------------------------------------------------------------
#To test how to make a section in R script
#To make a section in R script: type # "section name" -----
# testsection2 ----
#Another way to make a section in R script

#define a variable
parameter <- 5
print(parameter)
parameter
View(parameter)
rm(list = ls())

#manipulate a variable
temp_F <- 90
temp_C <- (temp_F - 32) * 5 / 9
temp_C
temp_F <- 70
temp_F <- temp_F - 10
temp_F <- temp_F - 65
temp_F + 10                 
temp_F_add10 <- temp_F + 10 
temp_F_add10
temp_F

#object naming
y <- 7
print(Y)
print(y)

#function: round
round(7.777, digits = 1)
round(7.777, digits = 0)
z <- 10.08509472
round(z, digits = 3)
z_rounded <- round(z, digits = 3)
z_rounded
k <- 3.56789
ceiling(k)
floor(k)

#function: log
log(1)
x <- 400
y <- log10(x)
y

#make atomic vector
# Integer vectors - to specify that a value is an integer, it should be followed by L:
cotton_yield_int <- c(925L, 970L, 983L, 940L, 959L, 933L)
julian_day <- c(20L, 36L, 60L, 82L, 87L, 121L, 150L, 202L, 261L, 289L, 310L, 344L, 360L)
# Double vectors:
cotton_yield_dbl <- c(925, 970, 983, 940, 959, 933)
dissolved_oxygen <- c(8.3, 7.88, 6.21, 6.0, 6.57, 6.89, 7.3, 7.4, 8.21, 9.1)
water_temp <- c(30.0, 31.3, 29.02, 30.667, 27.90)
# Character vectors:
field_ids <- c("field_1", "field_2", "field_3", "field_4", "field_5", "field_6")
dna_bases <- c("ACCG", "GCAT", "TAGG")
# dna_bases at the beginning of a new vector, dna_bases_expanded:
dna_bases_expanded <- c(dna_bases, "AGCT", "ACCG", "TGGA")
dna_bases_expanded
dna_bases
# water_temp inserted in the center of a new vector, water_temp_expanded:
water_temp_expanded <- c(16.3, 16.1, water_temp, 16.9, 16.67)
water_temp_expanded
water_temp
# Create a vector of 1-to-10
one_to_ten <- 1:10
one_to_ten
# Create a vector of 1-to-10 using the L notation
1L:10L 
# If the numbers are flipped, the vector will reverse direction
10:1
# The : symbol can also be used to string together several sequential vectors using c()
c(1:5, 10:15, 100:105)
# 0 to 5 by 0.5
seq(from = 0, to = 5, by = 0.5)
# 0 to 1 by 0.1
seq(from = 0, to = 1, by = 0.1)
# 0 to 20 by 2
seq(from = 0, to = 20, by = 2)
# 10 to 100 by 10
ten_by_ten <- seq(from = 10, to = 100, by = 10)
ten_by_ten
# Repeat a value of 2, 5 times
rep(2, times = 5)
# Repeat a vector of 1:3, 3 times
rep(1:3, times = 3)
# Repeat a vector of 1:3, 3 times, with each value repeated 2 times
rep(1:3, times = 3, each = 2)
# Repeat the ten_by_ten vector, 2 times
rep(ten_by_ten, times = 2)
# Repeat the ten_by_ten vector, 1 time, with each value repeated 3 times
ten_by_ten_3x <- rep(ten_by_ten, times = 1, each = 3)
ten_by_ten_3x
# Create the "tubthumping" chorus
rep(c("I get knocked down", "but I get up again", "you're never gonna keep me down"), times = 4)

#inspecting vector
# Length of cotton_yield_int
length(cotton_yield_int)
# Length of ten_by_ten_3x
length(ten_by_ten_3x)
# Length of dna_bases
length(dna_bases)
# Length of dna_bases_expanded
length(dna_bases_expanded)
typeof(cotton_yield_int)
typeof(cotton_yield_dbl)
typeof(field_ids)
class(julian_day)
class(dissolved_oxygen)
str(julian_day)
str(dissolved_oxygen)
str(field_ids)
long_vector <- 1:100
head(long_vector)
head(long_vector, 10)
tail(long_vector)
tail(long_vector, 20)

#coercion
# Numeric data mixed with character
numeric_and_character <- c("you're", "about", 0.5, "way", "through")
numeric_and_character # 0.5 was coerced into a character value, which we can tell because 0.5 is now in quotes, "0.5"
typeof(numeric_and_character)

numeric_as_character <- c(2.1, "300", "6", 77.7, 0) # Note that numbers in quotations are interpreted as characters
numeric_as_character # 2.1, 77.7, and 0 were coerced into characters
typeof(numeric_as_character)

# Numeric data mixed with logical
numeric_and_logical <- c(TRUE, 100, FALSE, 200)
numeric_and_logical # TRUE and FALSE were coerced into 1 and 0
typeof(numeric_and_logical)
# Numeric data read as character: convert to numeric
as.numeric(numeric_as_character)
typeof(as.numeric(numeric_as_character))

# Logical data read as numeric: convert to character
as.character(numeric_and_logical) # Note that, since R has already coerced the TRUE and FALSE to 1 and 0, this conversion to character maintains the 1 and 0
typeof(as.character(numeric_and_logical))

#vector and function: arithmetic operations
x <- c(1, 2, 3)
y <- c(0, 1, 2)
z <- 1:10
# Multiply x by 2
x * 2
# Square each element in y
y ^ 2
# Multiply x by y
x * y
# Square the product of 3 and the natural log ofx
(3 * log(x)) ^ 2 # Note that the parantheses are applied to indicate order of operations
# Add y and z
y + z
y_extended <- c(y, rep(0, times = 7))
y_extended
length(y_extended)
y_extended + z
#vector and function: apply functions to vector
sum(z)     # Sum all elements in vector z
sum(z, x)  # Sum all elements in vectors z and x
mean(z)    # Calculate the mean of elements in vector z
cumsum(x)  # Calculate the cumulative sum of elements in vector x
observations_field1 <- c(55.5, 60.2, 70.1, 56.8, 90.2, 50.5, 52.4, 62.3, 55.3, 61.4, 57.9, 53.1)
observations_field2 <- observations_field1 * 0.1
t.test(observations_field1, observations_field2, alternative = "two.sided", paired = TRUE)

#data frame and tibbles
data(iris)
#creating data frame
names <- c("Great Atlantic Hurricane",
           "Hazel",
           "Connie",
           "Ione",
           "Helene",
           "Donna",
           "Diana",
           "Emily",
           "Fran")
cat <- c(3, 4, 3, 3, 3, 3, 3, 3, 3)
month <- c("Sep", "Oct", "Aug", "Sep", 
           "Sep", "Sep", "Sep", "Aug", "Sep")
year <- c(1944, 1954, 1955, 1955, 1958, 1960, 1984, 1993, 1996)
data.frame(hurricane = names, 
           category = cat,
           landfall_month = month, 
           landfall_year = year)
data.frame(hurricane = c("Great Atlantic Hurricane", "Hazel", "Connie", "Ione", "Helene", "Donna", "Diana", "Emily", "Fran"), 
           category = c(3, 4, 3, 3, 3, 3, 3, 3, 3),
           landfall_month = c("Sep", "Oct", "Aug", "Sep", "Sep", "Sep", "Sep", "Aug", "Sep"), 
           landfall_year = c(1944, 1954, 1955, 1955, 1958, 1960, 1984, 1993, 1996))
nc_hurricanes <- data.frame(hurricane = names, 
                            category = cat,
                            landfall_month = month, 
                            landfall_year = year)
str(nc_hurricanes)
nc_hurricanes_tibble <- as_tibble(nc_hurricanes)
nc_hurricanes_tibble

#subsetting and conditional subsetting
water_temp      # The entire vector
water_temp[2]   # The second element in the vector
water_temp[5]
julian_day                     # The entire vector
julian_day[c(1, 3, 6, 7, 10)]
julian_day                                  # The entire vector
length(julian_day)                          # The length of the vector
julian_day[length(julian_day)]              # The last element of the vector
julian_day[ceiling(length(julian_day) / 2)] # The center element of the vector
l <- length(julian_day)                     # An object containing the length of the vector
julian_day[l]
logical_example <- c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE) # The logical vector
field_ids                           # The entire vector
field_ids[logical_example]          # The first, second, and fourth elements of the vector

dna_bases_expanded                  # The entire vector
dna_bases_expanded[logical_example] # The first, second, and fourth elements of the vector
# Years in which major hurricanes hit NC in the 20th century: 
year
# In the 20th century, what were the years in which major hurricanes impacted NC prior to 1960?
year < 1960       # conditional statement producing a logical vector
year[year < 1960] # conditional subsetting
# How many major hurricanes impacted NC in the 1990s?
length(year[year > 1989])  # using greater than
length(year[year >= 1990]) # using greater than or equal to
# Which major hurricanes impacted NC in the 1950s?
year < 1960 & year > 1949        # conditional statement producing a logical vector
names[year < 1960 & year > 1949] # conditional subsetting
# In what year did the Great Atlantic Hurricane occur?
names == "Great Atlantic Hurricane"
year[names == "Great Atlantic Hurricane"]
# Which of the major hurricanes in the 20th century landed in September or October?
month %in% c("Sep", "Oct")        # option 1 using %in%
names[month %in% c("Sep", "Oct")]
month == "Sep" | month == "Oct"   # option 2 using |
names[month == "Sep" | month == "Oct"]
# Which of the major hurricanes in the 20th century did not land in September?
month != "Sep"
names[month != "Sep"]
# Which of the major hurricanes in the 20th century was not a category 3?
cat == 3
names[!cat == 3]
# Which of the major hurricanes in the 20th century either occurred after 1990 or was a category 4?
xor(year > 1990, cat == "4")
names[xor(year > 1990, cat == "4")]
# Which of the major hurricanes in the 20th century was not a category 3?
cat != 3               # Conditional statement that produces a logical vector
which(cat != 3)        # Conditional statement with which() = produces a numeric vector
names[which(cat != 3)]
not_cat_3 <- which(cat != 3) # The output of which() can be assign to a vector object
names[not_cat_3]
# Select the element in first row and third column of the iris data frame
iris[1, 3]
# Select the 10th row of iris
iris[10, ]
# Select the 3rd column of iris
iris[, 3]
# Select the 100th to 120th rows in iris
iris[100:120, ]
# Select the 50th, 55th, and 59th rows in iris
iris[c(50, 55, 59), ]
# Select the 10th and 100th rows in iris and the third through fifth columns
iris_2row_subset <- iris[c(10, 100), c(3:5)]
iris_2row_subset
# Select the 12th and 13th rows, and 2nd through 5th columns of iris
iris[c(12, 13), -1]
iris[-c(1:11, 14:nrow(iris)), c(2:5)]
# First, let's create a new object that only includes the first 5 rows of iris
iris_short <- iris[1:5, ]

# Subset iris_short such that you only keep the Sepal.Length column
iris_short$Sepal.Length            # using the $ notation
str(iris_short$Sepal.Length)       # vector

iris_short[ , "Sepal.Length"]      # using the bracket notation
str(iris_short[ , "Sepal.Length"]) # vector

# Subset iris_short such that you keep the Sepal.Length and Sepal.Width columns
iris_short[, c("Sepal.Length", "Sepal.Width")]      # using the bracket notation
str(iris_short[, c("Sepal.Length", "Sepal.Width")]) # data frame

# Create a vector of Petal.Length from iris
petal_length <- iris$Petal.Length

# What is petal length measurement in the 101th row of iris?
petal_length[101]
iris[101, "Petal.Length"]

# How many petal length measurements in iris were greater than 6?
petal_length[petal_length > 6]         # vector of measurements with Petal.Length > 6
length(petal_length[petal_length > 6]) # number of measurements

petal_length_grtr_6 <- iris[iris$Petal.Length > 6, "Petal.Length"] # Alternative approach
length(petal_length_grtr_6)

#missing values
w <- c(3, NA, 7, 10, 1, NA)
mean(w)                      # output is NA
mean(w, na.rm = TRUE)
# Remove NAs using is.na()
is.na(w) # here, we can see that the TRUE values correspond to the index values of NA in w
w[!is.na(w)] # with conditional subsetting, we can remove the NAs
# Remove NAs using complete.cases()
complete.cases(w) # here, we can see that the FALSE values correspond to the index values of NA in w
w[complete.cases(w)]

#Read and open csv files
markets <- read_csv("data/local_farmers_markets.csv")
raleigh <- markets$CITY == "Raleigh"
raleigh_markets <- markets[raleigh, ]
View(raleigh_markets)
write_csv(raleigh_markets, "raleigh_farmers_markets.csv")

####EXERCISE####

#Exercise 1
2-10
3*5
9/2
5-3*2
(5-3)*2
4^2
8/2^2

#Exercise 2
grams <- 250
number <- 3
biomass <- grams*number
biomass
biomass_kg <- biomass/1000
biomass_kg

#Exercise 3
site1_g_carbon_m2_day <- 5
site2_g_carbon_m2_day <- 4.3
site1_area_m2 <- 200
site2_area_m2 <- 450
site1_npp_day <- site1_g_carbon_m2_day * site1_area_m2
site2_npp_day <- site2_g_carbon_m2_day * site2_area_m2
site1_npp_day
site2_npp_day
total_npp_day <- site1_npp_day + site2_npp_day
total_npp_day
dif_npp_day <- site1_npp_day - site2_npp_day
abs_dif_npp_day <- abs(dif_npp_day)
abs_dif_npp_day
total_npp_year<- total_npp_day * 365
total_npp_year

#Exercise 4
number_of_birds <- c(28, 32, 1, 0, 10, 22, 30, 19, 145, 27, 
                     36, 25, 9, 38, 21, 12, 122, 87, 36, 3, 0, 5, 55, 62, 98, 32, 
                     900, 33, 14, 39, 56, 81, 29, 38, 1, 0, 143, 37, 98, 77, 92, 
                     83, 34, 98, 40, 45, 51, 17, 22, 37, 48, 38, 91, 73, 54, 46,
                     102, 273, 600, 10, 11)
length(number_of_birds)
number_of_birds[42]
sum(number_of_birds)
min(number_of_birds)
max(number_of_birds)
mean(number_of_birds)
tail(number_of_birds)

#Exercise 5
w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"
colors <- c("green", "pink", "red")
w > 10
"green" %in% colors
x > y
2*x+0.2 == y
dna1 == dna2
dna1 != dna2
(w > x) & (y > z)
(x * w > 13.2) & (x * w < 13.5)
(nchar(dna1) > 5) | (z < (w * x))

#Exercise 6
length <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9)
width <- c(1.3, 2.2, 1.5, 4.5, 3.1, NA, 1.8, 0.5, 2.0, 2.7)
height <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2)
shrub_volume <- length * width * height
shrub_volume
sum(shrub_volume, na.rm = TRUE)
length_greater_2.5 <- length[length > 2.5]
length_greater_2.5
height_greater_5 <- height[height > 5]
height_greater_5
height[1:5]
shrub_volume[1:3]
tail(shrub_volume, 5)

#Exercise 7

shrub_dimension <- read_csv("data/shrub-dimensions-labeled.csv")
shrub_dimension
shrub_length <- shrub_dimension$length
shrub_length
shrub_volume <- shrub_dimension$length * shrub_dimension$width *shrub_dimension$height
shrub_volume
data.frame(shrubID = shrub_dimension$shrubID,
           height = shrub_dimension$height)
data.frame(shrub_dimension[2, ])
data.frame(shrub_dimension[1:5, ])
shrub_dimension[1:10]
shrub_dimension[1:10, ]
shrub_dimension[10, ]
head(shrub_dimension, 10)
View(shrub_dimension)
x <- c(6, 7, 8, 9, 10, -2, -3, 3, 2, 1)
y <- x[x <= 5 & x > 0]
y
summary(shrub_dimension)
length(shrub_dimension)
