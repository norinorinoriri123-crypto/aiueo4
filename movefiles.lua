if fs.exists("BadApple") then
  fs.delete("BadApple")
end
fs.makeDir("BadApple")

for _, f in ipairs(fs.list("/")) do
  if f:match("^anim_Bad Apple") or f == "audio.dfpwm" then
    fs.move(f, fs.combine("BadApple", f))
  end
end

print("Moved files into BadApple folder.")
