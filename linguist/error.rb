def detect_language(file, data)
  data.each do |name, info|
    return name if info["extensions"]&.any? { |e| file.end_with?(e) }
  end
  "Unknown"
end
