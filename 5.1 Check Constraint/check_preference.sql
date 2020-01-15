ALTER TABLE user_preference
ADD CONSTRAINT check_preference
CHECK (showing_profile_photo IN ('No one', 'Your connections', 'Your network', 'All members') AND who_can_reach_you IN ('Everyone', 'Only people who know your email address or appear in your Imported Contacts list', 'Only people who appear in your Imported Contacts list'));