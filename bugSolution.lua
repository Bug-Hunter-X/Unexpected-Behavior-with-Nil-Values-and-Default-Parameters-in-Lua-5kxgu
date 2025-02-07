local function foo(a, b)
  if a == nil then
    a = 10
  elseif a == 0 then
    --Handle 0 explicitly
    a = 0
  end
  return a + b
end

print(foo(nil, 5))  -- Output: 15
print(foo(0, 5))   -- Output: 5