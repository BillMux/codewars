# frozen_string_literal: true

# Convert an int32 number to IPv4
# e.g. 2149583361 -> "128.32.10.1"
#              32 -> "0.0.0.32"
#               0 -> "0.0.0.0"

def int32_to_ipv4(int32)
  bits = ('%032b' % int32).gsub(/(.{8})/, '\1.\2').chomp('.').split('.')
  bits.map { |x| x.to_i(2).to_s }.join('.')
end
