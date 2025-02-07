local function foo(a, b)
  if a == nil then
    a = 10  -- This line is problematic
  end
  return a + b
end

print(foo(nil, 5))  -- Output: 15
print(foo(0, 5))   -- Output: 5