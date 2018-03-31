json.extract! draft, :id, :user_id, :draft_id, :draft_name, :gender, :expected_price, :explanation, :product_category, :bookmark_count, :created_at, :updated_at
json.url draft_url(draft, format: :json)
