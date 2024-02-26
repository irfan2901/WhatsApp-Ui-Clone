const users = [
  {
    "name": "John Doe",
    "message": "Hello there!",
    "messageTime": "02:30 PM",
    "profileImage":
        "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Alice Smith",
    "message": "Good morning!",
    "messageTime": "08:15 AM",
    "profileImage":
        "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Bob Johnson",
    "message": "How are you doing?",
    "messageTime": "05:45 PM",
    "profileImage":
        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Emily Brown",
    "message": "Happy to see you!",
    "messageTime": "11:20 AM",
    "profileImage":
        "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Daniel White",
    "message": "Wishing you a great day!",
    "messageTime": "01:00 PM",
    "profileImage":
        "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Grace Miller",
    "message": "It's a beautiful day!",
    "messageTime": "10:05 AM",
    "profileImage":
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Michael Davis",
    "message": "Just saying hi!",
    "messageTime": "03:55 PM",
    "profileImage":
        "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Olivia Wilson",
    "message": "Sending positive vibes!",
    "messageTime": "07:30 AM",
    "profileImage":
        "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Ethan Anderson",
    "message": "What's up?",
    "messageTime": "04:40 PM",
    "profileImage":
        "https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Sophia Jones",
    "message": "Hope your day is fantastic!",
    "messageTime": "12:25 PM",
    "profileImage":
        "https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Aiden Taylor",
    "message": "Smile, it's a good day!",
    "messageTime": "09:50 AM",
    "profileImage":
        "https://images.pexels.com/photos/718978/pexels-photo-718978.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Mia Clark",
    "message": "Enjoy your moments!",
    "messageTime": "06:15 PM",
    "profileImage":
        "https://images.pexels.com/photos/1090387/pexels-photo-1090387.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Liam Turner",
    "message": "What's on your mind?",
    "messageTime": "02:10 PM",
    "profileImage":
        "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Ava Baker",
    "message": "Thinking of you!",
    "messageTime": "05:00 PM",
    "profileImage":
        "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Noah Walker",
    "message": "Have a fantastic afternoon!",
    "messageTime": "03:15 PM",
    "profileImage":
        "https://images.pexels.com/photos/769745/pexels-photo-769745.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Emma Harris",
    "message": "Sending positive energy!",
    "messageTime": "01:45 PM",
    "profileImage":
        "https://images.pexels.com/photos/785667/pexels-photo-785667.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Carter Turner",
    "message": "Hope you're smiling!",
    "messageTime": "06:50 AM",
    "profileImage":
        "https://images.pexels.com/photos/2072453/pexels-photo-2072453.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Isabella Foster",
    "message": "Stay awesome!",
    "messageTime": "04:25 PM",
    "profileImage":
        "https://images.pexels.com/photos/1181690/pexels-photo-1181690.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "James Bennett",
    "message": "Good vibes only!",
    "messageTime": "09:10 AM",
    "profileImage":
        "https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?auto=compress&cs=tinysrgb&w=600"
  },
  {
    "name": "Scarlett Reed",
    "message": "Cheers to a great day!",
    "messageTime": "07:05 PM",
    "profileImage":
        "https://images.pexels.com/photos/837306/pexels-photo-837306.jpeg?auto=compress&cs=tinysrgb&w=600"
  }
];

const messages = [
  {"isMe": false, "text": "Hey What is up with you!!", "time": "10:00 am"},
  {"isMe": true, "text": "Just chilling!", "time": "11:30 am"},
  {"isMe": false, "text": "I'm good, thanks!", "time": "01:45 pm"},
  {"isMe": true, "text": "Any plans for the day?", "time": "03:20 pm"},
  {"isMe": false, "text": "Not really, just work.", "time": "04:55 pm"},
  {"isMe": true, "text": "Same here, work never ends.", "time": "06:10 pm"},
  {"isMe": false, "text": "True that!", "time": "08:25 pm"},
  {"isMe": true, "text": "What's for dinner?", "time": "09:50 pm"},
  {"isMe": false, "text": "Thinking of ordering pizza.", "time": "11:15 pm"},
  {"isMe": true, "text": "Sounds good! I love pizza.", "time": "12:30 am"}
];

const List<String> randomDates = [
  '02-14-2022, 10 45 AM',
  '08-29-2023, 03 20 PM',
  '04-01-2022, 09 15 AM',
  '11-07-2023, 06 50 PM',
  '06-12-2022, 02 35 AM',
  '09-18-2023, 11 10 AM',
  '01-23-2022, 07 55 PM',
  '07-31-2023, 04 30 AM',
  '03-04-2022, 01 05 PM',
  '10-10-2023, 08 40 AM',
  '05-15-2022, 05 15 PM',
  '12-21-2023, 01 50 AM',
  '07-26-2022, 10 25 AM',
  '02-01-2024, 06 00 PM',
  '09-05-2022, 02 35 AM',
  '04-11-2024, 11 10 AM',
  '11-15-2022, 07 45 PM',
  '06-21-2024, 04 20 AM',
  '01-26-2023, 12 00 PM',
  '08-02-2024, 08 35 AM',
];
