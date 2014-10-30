Then(/^I should see "(.*?)" and the current time$/) do |arg1|
    if page.respond_to? :should
      page.should have_content(arg1)
      page.should have_content(Time.now)
    else
      assert page.has_content?(arg1)
      assert page.has_content?(Time.now)
    end
end