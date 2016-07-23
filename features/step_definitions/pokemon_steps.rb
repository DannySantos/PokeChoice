Given(/^there are some Pokemon in the database$/) do
  bulbasaur = Pokemon.find_or_create_by({
    number: 1, 
    name: "Bulbasaur", 
    image_url: "http://images.pocketgamer.co.uk/images/featimgs/pokemon-go-dex-bulbasaur.jpg"
  })

  ivysaur = Pokemon.find_or_create_by({
    number: 2, 
    name: "Ivysaur", 
    image_url: "http://images.pocketgamer.co.uk/images/featimgs/pokemon-go-dex-ivysaur.jpg"
  })

  venusaur = Pokemon.find_or_create_by({
    number: 3, 
    name: "Venusaur", 
    image_url: "http://images.pocketgamer.co.uk/images/featimgs/pokemon-go-dex-venusaur.jpg"
  })
end

Given(/^they are on the home page$/) do
  visit root_path
end

Then(/^they should see all Pokemon in the database$/) do
  expect(page.all("li.pokemon").count).to eq(Pokemon.all.count)
end