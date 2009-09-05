Factory.define :user do |f|
  f.sequence(:login) { |n| "hank#{n}" }
  f.name "Hank"
  f.password "hanksword"
  f.password_confirmation "hanksword"
  f.sequence(:email) { |n| "hank#{n}@sandals-on-sandstone.com" }
end

Factory.define :editor do |f|

end

Factory.define :audit do |f|

end

Factory.define :page do |f|
  f.sequence(:path) { |n| "test_page_#{n}" }
  f.sequence(:title) { |n| "Test page #{n}" }
  f.content "Nada"
end

Factory.define :page_template do |f|
  f.sequence(:name) { |n| "Test template #{n}" }
end
