function conky_nchars(arg, n)
    local data = conky_parse(arg)
    local no_whitespace = string.gsub(data, "%s+", "")
    local formatter = string.format("%%%s.%ss", n, n)
    local specific_length = string.format(formatter, no_whitespace)
    return string.gsub(specific_length, "%s", "   ")
end