#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

# Profit for each month
profit <- revenue - expenses
profit

# Profit after 30% tax for each month
profit_after_tax <- round(profit * 0.7, digits = 2)
profit_after_tax

#-- or
tax <- round(profit * 0.3, digits = 2)
profit_after_tax <- profit - tax
profit_after_tax

# Profit margin for each month
profit_margin <- round(profit_after_tax / revenue, 2) * 100
profit_margin

# Mean profit margin
mean_pat <- mean(profit_after_tax)
mean_pat

# Good months
good_months <- profit_after_tax > mean_pat
good_months
  
# Bad Months
bad_months <- profit_after_tax < mean_pat
bad_months <- !good_months
bad_months

# Best Month
best_month <- max(profit_after_tax)
best_month
  
# Worst Month
worst_month <- min(profit_margin)
worst_month
