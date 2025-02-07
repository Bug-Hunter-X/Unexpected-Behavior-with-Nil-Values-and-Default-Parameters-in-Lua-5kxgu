# Lua Nil Value Handling Bug

This repository demonstrates a subtle bug related to handling `nil` values and default parameter assignment in Lua.  The `foo` function intends to provide a default value for parameter `a` if it's `nil`, but it does so in a way that can unexpectedly alter function behavior depending on the input. The issue arises because Lua's loose typing can silently convert 0 to `false` in boolean contexts, creating inconsistent outcomes.

## How to Reproduce

Clone this repo and run `bug.lua`. Observe the outputs. The problem is that the `a == nil` check is not reliable, as the intended behavior differs when `a` is numerically zero vs. strictly `nil`.

## Solution

Examine `bugSolution.lua` for a corrected version of the `foo` function.  The solution uses explicit type checks to precisely handle `nil` and zero inputs. 