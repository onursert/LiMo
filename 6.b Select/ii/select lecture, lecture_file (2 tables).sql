SELECT lecture.id, lecture_file.file
FROM lecture, lecture_file
WHERE lecture.id = lecture_file.lecture_id AND lecture.id = "4";