# create a user 
curl -X POST http://localhost:3000/api/v1/users -H "Content-Type: application/json" -d '{"user": {"name": "Jack", "email": "jack@example.com"}}'

# get users
curl http://localhost:3000/api/v1/users

# create attendance
curl -X POST http://localhost:3000/api/v1/users/1/attendances -H "Content-Type: application/json" -d '{"attendance": {"date": "2024-05-17", "status": "present", "checkin": "2024-05-17T09:00:00Z", "checkout": "2024-05-17T17:00:00Z"}}'

# get attendance for a user 
curl http://localhost:3000/api/v1/users/1/attendances

