After do |scenario|
    name = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, ' ')
    name = name.delete(' ')
    screenshot = "log/screenshots/#{name}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencias_WEB')
end