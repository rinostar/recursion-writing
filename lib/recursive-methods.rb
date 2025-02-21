# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the value of n
# Space complexity: O(n), where n is the stack frames 
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n^2), where n is the length of s - O(n) for recursion & O(n) for creating new array within each recursive call
# Space complexity: O(n^2), O(n) for stack frames & O(n) for creating new array within each stack frame ("s[0..-2]")
def reverse(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the stack frames
def reverse_inplace(s, head = 0, tail = s.length-1)
  return s if head > tail

  temp = s[head]
  s[head] = s[tail]
  s[tail] = temp
  
  return reverse_inplace(s, head+1, tail-1)
end

# Time complexity: O(n), where n is the value of n
# Space complexity: O(n), where n is the stack frames
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1)
end

# Time complexity: O(n^2), where n is the length of s - O(n) for recursion & O(n) for creating new array within each recursive call
# Space complexity: O(n^2), O(n) for stack frames & O(n) for creating new array within each stack frame ("s[1..-2]")
def nested(s)
  return true if s.length == 0
  return false if s[0] == s[-1]
  nested(s[1..-2])
end

# Time complexity: O(n), where n is the length of array
# Space complexity: O(n), where n is the stack frames
def search(array, value, index = 0)
  return false if index == array.length

  if index < array.length
    return true if array[index] == value
    return search(array, value, index + 1)
  end 
end

# Time complexity: O(n), where n is the length of s
# Space complexity: O(n), where n is the stack frames
def is_palindrome(s, head = 0, tail = s.length-1)
  return true if head >= tail
  return false if s[head] != s[tail]
  return is_palindrome(s, head+1, tail-1)
end

# Time complexity: O(n^2), where n is the length of s - O(n) for recursion & O(n) for creating new array within each recursive call
# Space complexity: O(n^2), O(n) for stack frames & O(n) for creating new array within each stack frame ("s[0..-2]")
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  digit_match_private(n, m, 0)
end

def digit_match_private(n, m, count)
  return count if n[-1] == nil || m[-1] == nil
  count += 1 if n[-1] == m[-1]
  digit_match_private(n[0..-2], m[0..-2], count)
end