# Problem 1
def extract_hashtags(text)
    pattern = '/#\w+/'
    hashtags = text.scan(pattern)
    hashtags.flatten
end

p extract_hashtags("Love this #beautiful day! #sunny")

# Problem 2
def valid_password?(password)
    pattern = '/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,16}$/'
    password.match?(pattern)
end

p valid_password?("Passw0rd")
p valid_password?("pass")

# Problem 3
def find_numbers(text)
    pattern = '/\d+(\.\d+)?/'
    text.scan(pattern)
end

p find_numbers(
    "The order was placed for 100.25 units at a price of 20.75 each."
)

# Problem 4
def valid_date?(date)
    pattern = '/\A\d{4}-\d{2}-\d{2}\z/'
    date.match?(pattern)
end

p valid_date?("2023-03-15")
p valid_date?("15-03-2023")

# Problem 5
def parse_log_entry(log)
    pattern = '/\A(INFO|WARN|ERROR): (.+)\z/'
    match = log.match(pattern)
    [match[1], match[2]] if match
end

log_entry = "ERROR: Disk space low"
p parse_log_entry(log_entry).inspect
