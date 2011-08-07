# -*- encoding : utf-8 -*-
当 /^我访问(.*)$/ do |thing|
  case thing
  when '后台首页'
    visit '/admin'
  else
    raise "no such thing as '#{thing}'"
  end
end

那么 /^我应该看到“(.*)”$/ do |thing|
  page.should have_content(thing)
end

