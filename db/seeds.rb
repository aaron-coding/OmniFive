User.create!([
  {username: "Aaron", password_digest: "$2a$10$0NQ.Nxs7gVso8LXNAzdq3uZz2YZhxq7D7JYjmkyb3FywMkgjHzx.6", session_token: "e7WrEdW4T3ZADYZ/rn3DRQ==", creator_desc: "I have a knack for certain things, and can share them with you. I'm definitely a geek and I'll let you take advantage of that!", image_url: "https://www.filepicker.io/api/file/FGtp72d1RlaOUw1hGJYa"},
  {username: "superDesigner", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "RZhR7zgS5oTmb4NIJzyUYw==", creator_desc: "I can design anything for you. When I was born, I designed my own crib to sleep in.", image_url: "https://www.filepicker.io/api/file/9eJbOMxRimHqasF5cuSB"},
  {username: "HipHop-Lyft ", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "UZzMbdNQMs7dmhoAMVY4ww==", creator_desc: "I am a rapper and Lyft driver by profession. I love to ride and rap. Ask me any questions about either of these and I'll have an answer", image_url: "https://www.filepicker.io/api/file/oU6Y0MfTuqCz1Obr0ur0"},
  {username: "TheRealSpiderman", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "+Aqm+7LzMm/+Lr4Vvw1v7g==", creator_desc: "I am Spiderman. Really. Well, my real name is Peter Parker, and I no longer want to submit photos to the Daily Bugle, so I've opened up shop here on OmniFive to get some cash. I don't get paid to be Spiderman.", image_url: "https://www.filepicker.io/api/file/yx5aUOcRG6z1t8PUloX1"},
  {username: "dog_lover", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "5Du7LHW7SSPaVzhMgnmVIA==", creator_desc: "I wrote the book \"The Dog: Man's Best Friend\" and I am talented in so many ways all about dogs. In addition to my OmniFive Deals, message me at dog@doglove.com on any questions about your dogs.", image_url: "https://www.filepicker.io/api/file/xxGuxy0fRHeHQvw5TdUM"},
  {username: "ShoppingMaster", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "SkxFfeshHQO+BOtoZGgZgA==", creator_desc: "I will help you get the best deals. I've been shopping hard ever since I turned 10 years old, and gladly found out I can make a living shopping. My job is to help you find things you love.", image_url: "https://www.filepicker.io/api/file/vrCcf8e6QMilt5zAsObJ"},
  {username: "MrLawyer", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "DgvYB7Q97Q8SaYD3jj38MA==", creator_desc: "I have won over 80 cases in court and am very experienced in US statutes in all states. I can answer your questions.", image_url: "https://www.filepicker.io/api/file/mJAC3sgIRfy0X8rptqif"}
])

Gig.create!([
  {title: "I will send a personalized happy birthday snapchat on your behalf", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/J1X3hmuRxx5RwPMAFsgg", description: "Sending a birthday wish is considered an act of love and kindness. However, in some cases people don't pick up their phone or check their emails in order to receive their birthday wishes. I will gladly send a Snapchat to the loved one of your choice. Snapchat users are very famous for always checking their snapchats, there are no 'over-full' inboxes."},
  {title: "I will sing hey there Delilah, customized to your name", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/N3UbKSJJS9ygMwR9E3as", description: "I will sing hey there Delilah, customized to your name"},
  {title: "I will add Google Maps to your existing website", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/LUdINzJsRYqbfMSqKpak", description: "I will add Google Maps to your existing website"},
  {title: "I will write a glorious short story based on your life", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/r2Kll5yQse9w0DYpfZ4G", description: "The story is 250 words long by default, but I can make it longer with gig extras. I also need events in your life that you are proud of so I can write about them. I can use names of friends and relatives in your life or I can make the names up."},
  {title: "I will photoshop the sky into the color of your choice", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/XoIndkmSSNu9DdH357VK", description: "I have many years of photoshop experience and can blend in any color into the sky. I can make it look also like the Northern Lights, but for that you have to add a Gig Extra"},
  {title: "I will get you ripped with a workout program", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/OexfPZZURoqPxg9u9M8A", description: "I will lay out a rigorous program that will get you ripped guaranteed."}
])

GigExtra.create!([
  {gig_id: 1, title: "I will create a snapchat account for you so you can get started", price: 5},
  {gig_id: 1, title: "I will record the snapchat inside a Maserati GranTurismo", price: 25},
  {gig_id: 1, title: "I will sing the entire happy birthday song in the 10 seconds allotted by snapchat", price: 10},
  {gig_id: 1, title: "I will say happy birthday in the language of your choice (default is english)", price: 5},
  {gig_id: 2, title: "I will play a guitar in the background", price: 5},
  {gig_id: 2, title: "I will record the video on a night-time background with the stars showing", price: 5},
  {gig_id: 3, title: "I will add the map to your site in under 5 hours", price: 15},
  {gig_id: 4, title: "I will narrate the story in my regular voice and send you the mp3", price: 5},
  {gig_id: 4, title: "I will narrate the story in a gladiator voice", price: 10},
  {gig_id: 4, title: "I will narrate the story in Daffy Duck's voice", price: 10},
  {gig_id: 5, title: "I will include the Northern Lights in your photo", price: 5},
  {gig_id: 6, title: "I will include a diet plan for the next 4 weeks", price: 15},
  {gig_id: 6, title: "I will call you every 4 hours to make sure you are making progress on the program", price: 20},
  {gig_id: 6, title: "I will send you a video series of workouts 10 HOURS LONG ", price: 20},
])
