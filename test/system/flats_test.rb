require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting root" do
    visit "/"

    assert_selector "h1", text: "Nuestros departamentos"
    assert_selector ".card", count: 6
  end

  test "visiting a flat page" do
    visit "/flats/145"

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
