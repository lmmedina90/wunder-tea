Fabricator(:tea) do
  kind { ["green", "black", "white"].sample }
  quantity { rand(1..5) }
  user_id 1
end