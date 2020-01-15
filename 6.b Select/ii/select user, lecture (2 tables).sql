SELECT user.id, user.first_name, user.last_name
FROM user, lecture
WHERE user.id = lecture.lecturer_id AND lecture.id = "5";