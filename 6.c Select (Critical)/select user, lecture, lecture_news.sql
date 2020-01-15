SELECT user.first_name, lecture.id, lecture_news.content
FROM user, lecture, lecture_news
WHERE user.id = lecture.lecturer_id AND lecture.id = lecture_news.lecture_id AND user.id = 8;