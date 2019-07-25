class CombineItemsInList < ActiveRecord::Migration[5.2]
  def up
    # replace multiple items for a single product in a cart with a # single item
    List.all.each do |list|
        # count the number of each product in the cart
      sums = list.line_items.group(:quiz_id).sum(:quantity)
      
      sums.each do |quiz_id, quantity| 
        if quantity > 1
          # remove individual items
          list.line_items.where(quiz_id: quiz_id).delete_all
          # replace with a single item
          item = list.line_items.build(quiz_id: quiz_id) 
          item.quantity = quantity
          item.save!
        end 
      end
    end 
  end

  def down
    # split items with quantity>1 into multiple items 
    LineItem.where("quantity>1").each do |line_item|
        # add individual items
        line_item.quantity.times do 
          LineItem.create(
            list_id: line_item.list_id, 
            quiz_id: line_item.quiz_id, 
            quantity: 1
          )
    end
        # remove original item
        line_item.destroy
    end 
  end
end

