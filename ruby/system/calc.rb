# 2つの整数の加算を行う
def add(a, b)
  a + b
end

# 2つの整数の減算を行う
def subtract(a, b)
  a - b
end

# 2つの整数の乗算を行う
def multiply(a, b)
  a * b
end

# 2つの整数の除算を行う
# ゼロ除算が発生した場合、エラーを発生させる
def divide(a, b)
  raise ArgumentError, "0で除算された" if b == 0
  a / b
end