##structure of if else condition#####
if (condition) {
  # do something
} else {
  # do something else
}

#example
x <- 1:15
x
sample(x)
if (sample(x, 1) <= 10) {
  print("x is less than 10")
} else {
  print("x is greater than 10")
}

#vectorization form of ifelse
ifelse(x <= 10, "x less than 10", "x greater than 10")

if (sample(x, 1) < 10) {
  y <- 5
} else {
  y <- 0
}

y <- if (sample(x, 1) < 10) {
  5
} else {
  0
}


#for loop
for (i in 1:10) {
  print(i)
}

x <- c("apples", "oranges", "bananas", "strawberries")

for (i in x) {
  print(x[i])
}

for (i in 1:4) {
  print(x[i])
}

for (i in seq(x)) {
  print(x[i])
}

for (i in 1:4) print(x[i])

m <- matrix(1:10, 2)
m
for (i in seq(nrow(m))) {
  for (j in seq(ncol(m))) {
    print(m[i, j])
  }
}

#while loop
i <- 1

while (i < 10) {
  print(i)
  i <- i + 1
}

#even number
for (i in 1:20) {
  if (i%%2 == 1) {
    next
  } else {
    print(i)
  }
}
