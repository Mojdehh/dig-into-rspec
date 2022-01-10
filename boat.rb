class Boat
  def allowed_abroad?(inventory)
    inventory.include?('life jacket')
  end
end
