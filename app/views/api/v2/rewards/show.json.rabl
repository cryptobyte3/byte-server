object @user_reward
node(:id) { |r| r.id }
node(:reward_id) { |r| r.reward_id }
node(:name) { |r| r.reward.name }
node(:photo) { |r| r.reward.photo }
node(:available_from) { |r| r.reward.available_from }
node(:expired_until) { |r| r.reward.expired_until }
node(:timezone) { |r| r.reward.timezone }
node(:description) { |r| r.reward.description }
node(:sender_id) { |r| r.location_id }
node(:sender_name) { |r| (r.location.name.present? ? r.location.name : r.sender.name) }
node(:redeem_by_qrcode) { |r| r.reward.redeem_by_qrcode }
