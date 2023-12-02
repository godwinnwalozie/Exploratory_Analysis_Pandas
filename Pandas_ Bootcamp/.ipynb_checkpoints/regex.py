def use_regex(input_text):
    pattern = re.compile(r"100g", re.IGNORECASE)
    return pattern.match(input_text)

pattern.match('5tr')