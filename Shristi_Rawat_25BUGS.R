# ============================================================
#  BCA 4th Semester | R Programming - CRITICAL Bug Fix
#  Student  : Shristi Rawat
#  Status   : DEBARRED + NO ASSIGNMENT SUBMITTED
#  Tasks    : Fix ALL 25 Bugs (each marked with # BUG N)
#  Deadline : 10 April 2026
#  NOTE     : For every bug: write what was wrong and the fix.
#             This file must also be attached in Practical File.
# ============================================================

# ===== UNIT 1: Getting Started with R (Bugs 1-9) =====

# BUG 1 - Missing assignment operator
name "Shristi"                    # BUG 1: missing <-
cat(name)
# FIX: name <-"shristi"               #added <- assigment operator
cat(name)
# BUG 2 - Wrong function name for printing
Print("Hello World")              # BUG 2: R uses print() lowercase
# FIX:

# BUG 3 - Integer division confused with decimal
result <- 7 / 2                   # BUG 3: should be integer result, use %/%
cat("Integer div:", result)
# FIX:

# BUG 4 - Wrong concatenation
x <- "R"
y <- "Programming"
z <- x - y                        # BUG 4: use paste() or paste0()
cat(z)
# FIX:

# BUG 5 - Vector created incorrectly
nums <- [1, 2, 3, 4, 5]          # BUG 5: should use c()
# FIX:

# BUG 6 - Case sensitive function
my_name <- "shristi rawat"
upper <- Toupper(my_name)         # BUG 6: should be toupper()
cat(upper)
# FIX:

# BUG 7 - Incorrect comparison operator
age <- 18
cat(age = 18)                     # BUG 7: should use == not =
# FIX:

# BUG 8 - Wrong readline usage
name <- readline(Enter your name:)  # BUG 8: prompt must be a string in quotes
# FIX:

# BUG 9 - Logical NOT operator wrong
is_sunny <- TRUE
cat(!1 is_sunny)                   # BUG 9: syntax error, should be !is_sunny
# FIX:


# ===== UNIT 2: Working with Data (Bugs 10-17) =====

# BUG 10 - data.frame column wrong type assignment
df <- data.frame(Name=c("A","B"), Score=c("90","85"))
mean_score <- mean(df$Score)       # BUG 10: Score is character, convert to numeric first
cat("Mean:", mean_score)
# FIX:

# BUG 11 - Wrong index for row access
students <- data.frame(Name=c("Anu","Ravi","Priya"), Marks=c(70,85,92))
cat("Second student:", students[1, 1])  # BUG 11: should be [2, 1]
# FIX:

# BUG 12 - Missing na.rm in mean
values <- c(10, NA, 30, NA, 50)
avg <- mean(values)               # BUG 12: will return NA, needs na.rm=TRUE
cat("Average:", avg)
# FIX:

# BUG 13 - Wrong plot type for trend
x <- 1:10
y <- x^2
plot(x, y, type="p")             # BUG 13: for a trend/line use type="l"
# FIX:

# BUG 14 - Pie chart using wrong function
scores <- c(30, 25, 45)
labels <- c("A","B","C")
barplot(scores, labels)           # BUG 14: should use pie(scores, labels)
# FIX:

# BUG 15 - Adding column to df incorrectly
df <- data.frame(Name=c("X","Y"), Price=c(100,200))
df["Discount"] = 10               # BUG 15: use df$Discount <- 10
print(df)
# FIX:

# BUG 16 - Accessing nonexistent column
df2 <- data.frame(City=c("Delhi","Mumbai"), Pop=c(300,200))
cat(df2$Population)               # BUG 16: column is named Pop, not Population
# FIX:

# BUG 17 - Wrong summary call
x <- c(5,10,15,20,25)
summery(x)                        # BUG 17: misspelled, should be summary()
# FIX:


# ===== UNIT 3: Control Flow & Functions (Bugs 18-25) =====

# BUG 18 - Function keyword misspelled
square <- Funtion(n) {            # BUG 18: should be function (lowercase)
  return(n * n)
}
cat(square(5))
# FIX:

# BUG 19 - Missing return value
cube <- function(n) {
  result <- n^3                   # BUG 19: result is calculated but never returned
}
cat(cube(3))
# FIX:

# BUG 20 - Infinite for loop
for i in 1:5 {                   # BUG 20: missing parentheses: for (i in 1:5)
  cat(i, "")
}
# FIX:

# BUG 21 - while loop condition never false
n <- 10
while (n >= 1) {
  cat(n, "")
  n <- n + 1                     # BUG 21: should be n <- n - 1 to countdown
}
# FIX:

# BUG 22 - else if without if
score <- 75
else if (score >= 60) {          # BUG 22: missing the if block before else if
  cat("B Grade")
}
# FIX:

# BUG 23 - Missing braces in if
x <- 10
if (x > 5)                       # BUG 23: no braces, only works for 1 line
  cat("Greater")
  cat("than five")               # this line always runs regardless
# FIX:

# BUG 24 - Wrong recursion base case
factorial_r <- function(n) {
  if (n == 1) return(n)          # BUG 24: base case should also handle n == 0
  return(n * factorial_r(n - 1))
}
cat(factorial_r(0))              # will cause infinite loop/error
# FIX:

# BUG 25 - tryCatch used incorrectly
result <- tryCatch(
  log(-1),                       # BUG 25: missing error= handler, add: , error=function(e) NA
)
cat("Result:", result)
# FIX:
