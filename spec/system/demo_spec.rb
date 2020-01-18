require "rails_helper"

RSpec.describe "Demo" do
  it "shows the pumi demo", :js do
    visit root_path
    select("Phnom Penh", from: "Province")
    expect(page).to have_select("District", with_options: ["Chamkar Mon"])
  end
end
