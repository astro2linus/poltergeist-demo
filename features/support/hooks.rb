Before do |scenario|
end

After do |scenario|
  if(scenario.failed?)
    save_screenshot("screenshots/#{scenario.__id__}.png")
    embed("screenshots/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end 