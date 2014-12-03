Then(/^I should be on the Home screen$/) do
    check_element_exists "view view:'UIImageView'"
    check_element_exists "view:'UITabBarButtonLabel' marked:'Home'"
    check_element_exists "view:'UITabBarButtonLabel' marked:'Events'"
end

When(/^I navigate to "(.*?)"$/) do |tab_name|
  touch "view:'UITabBarButton' marked:'#{tab_name}'"
end

Then(/^I should be on the Events screen$/) do
    %w{archery athletics badminton}.each do |label|
      check_element_exists "view:'UIButton' marked:'#{label}'"
    end
end

Then(/^I should be on the Schedule screen$/) do
      check_element_exists "view:'UILabel' marked:'Football | Old Trafford, Manchester'"
      check_element_exists "view:'UITableViewIndex' marked:'table index'"
end

When(/^I scroll the table to the bottom$/) do
      scroll_view_to_bottom('tableView')
end

Then(/^I should see this schedule "(.*?)"$/) do |text|
  check_element_exists "view:'UILabel' marked:'#{text}'"
end
