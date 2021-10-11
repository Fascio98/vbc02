# frozen_string_literal: true

# 1. გამოიყენეთ RSpec, რომ გაუშვათ ტესტები hash_like_js_object_spec.rb ფაილში
# 2.

# თქვენ იცით, რომ  Hash Ruby-ში ინახავ უნიკალურ გასაღებს და ნებისმიერ მნიშვნელობებს.

# ჩვენ შეგვიძლია ამოვიღოთ ელემენტი:
# h = { a: 1, b: 2}
# puts h[:a]
# => 1

# puts h[:b]
# => 2

# ან ჩავწეროთ/განვაახლოთ:

# h = { a: 1, b: 2}

# h[:abc] = '123'
# puts h[:abc]
# => 123

# ამოცანა:

# განვაახლოთ Ruby-ის Hash ისე, რომ იმუშაოს როგორც JavaScript-ის იბიექტი. ანუ ამოვიღო ან ჩავწერო/განვაახლო Hash-ი . (dot notation-ით).

# უნდა იმუშაოს როგორც getter და setter.

# თუ მნიშვნელობა არის Boolean, მაშინ კითხვის ნიშნით უნდა ამოვიღო მნიშვნელობა.

# მაგ:
# person = { name: 'Bob' }

# puts person.name
# => Bob

# person.age = 45

# puts person.age
# => 45

# person.programmer = true

# person.programmer?
# => true

# Documentation
class Hash < Object
  def method_missing(method, *args)
    if !self[method].nil?
      self[method]
    elsif method[method.length - 1] == '='
      self[method] = args[0]
    else
      values[length - 1]
    end
  end

  def respond_to_missing?(method, include_private = false)
    method.start_with?('w') || method.start_with?('h') || super
  end
end
