User.create!([
  {username: "Aaron", password_digest: "$2a$10$0NQ.Nxs7gVso8LXNAzdq3uZz2YZhxq7D7JYjmkyb3FywMkgjHzx.6", session_token: "e7WrEdW4T3ZADYZ/rn3DRQ==", creator_desc: "I have a knack for certain things, and can share them with you. I'm definitely a geek and I'll let you take advantage of that!", image_url: "https://www.filepicker.io/api/file/FGtp72d1RlaOUw1hGJYa", email: "aaron.cordovez.m@gmail.com"},
  {username: "superDesigner", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "RZhR7zgS5oTmb4NIJzyUYw==", creator_desc: "I can design anything for you. When I was born, I designed my own crib to sleep in.", image_url: "https://www.filepicker.io/api/file/9eJbOMxRimHqasF5cuSB", email: "superdesigner@omnifive.com"},
  {username: "HipHop-Lyft ", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "UZzMbdNQMs7dmhoAMVY4ww==", creator_desc: "I am a rapper and Lyft driver by profession. I love to ride and rap. Ask me any questions about either of these and I'll have an answer", image_url: "https://www.filepicker.io/api/file/oU6Y0MfTuqCz1Obr0ur0", email: "hiphop@lyft.com"},
  {username: "TheRealSpiderman", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "+Aqm+7LzMm/+Lr4Vvw1v7g==", creator_desc: "I am Spiderman. Really. Well, my real name is Peter Parker, and I no longer want to submit photos to the Daily Bugle, so I've opened up shop here on OmniFive to get some cash. I don't get paid to be Spiderman.", image_url: "https://www.filepicker.io/api/file/yx5aUOcRG6z1t8PUloX1", email: "iamspiderman@yahoo.com"},
  {username: "dog_lover", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "5Du7LHW7SSPaVzhMgnmVIA==", creator_desc: "I wrote the book \"The Dog: Man's Best Friend\" and I am talented in so many ways all about dogs. In addition to my OmniFive Deals, message me at dog@doglove.com on any questions about your dogs.", image_url: "https://www.filepicker.io/api/file/xxGuxy0fRHeHQvw5TdUM", email: "dogsovercats@iluvdogs.com"},
  {username: "ShoppingMaster", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "SkxFfeshHQO+BOtoZGgZgA==", creator_desc: "I will help you get the best deals. I've been shopping hard ever since I turned 10 years old, and gladly found out I can make a living shopping. My job is to help you find things you love.", image_url: "https://www.filepicker.io/api/file/vrCcf8e6QMilt5zAsObJ", email: "shopwithme@gmail.com"},
  {username: "MrLawyer", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "DgvYB7Q97Q8SaYD3jj38MA==", creator_desc: "I have won over 80 cases in court and am very experienced in US statutes in all states. I can answer your questions.", image_url: "https://www.filepicker.io/api/file/mJAC3sgIRfy0X8rptqif", email: "legalmatters@lawyer.com"},
  {username: "guest", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "M7LLSzV8sA0VCQQdWbaWRg==", creator_desc: "I'm just a guest here... Maybe I'll spend $5, maybe not.", email: "guest@gmail.com"}
])

Gig.create!([
  {title: "I will draw your cartoon self on paper", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/NB2cS44qS9OxD7x0CXhG", description: "You send me a picture of yourself and I will draw you in caricature form. I have drawn over 500 people in the past. For a little extra I can draw you and you family together."},  
  {title: "I will sing hey there Delilah, customized to your name", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/N3UbKSJJS9ygMwR9E3as", description: "I will sing hey there Delilah, customized to your name"},
  {title: "I will add Google Maps to your existing website", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/LUdINzJsRYqbfMSqKpak", description: "I will add Google Maps to your existing website"},
  {title: "I will write a glorious short story based on your life", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/r2Kll5yQse9w0DYpfZ4G", description: "The story is 250 words long by default, but I can make it longer with gig extras. I also need events in your life that you are proud of so I can write about them. I can use names of friends and relatives in your life or I can make the names up."},
  {title: "I will photoshop the sky into the color of your choice", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/XoIndkmSSNu9DdH357VK", description: "I have many years of photoshop experience and can blend in any color into the sky. I can make it look also like the Northern Lights, but for that you have to add a Gig Extra"},
  {title: "I will get you ripped with a workout program", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/OexfPZZURoqPxg9u9M8A", description: "I will lay out a rigorous program that will get you ripped guaranteed."},
  {title: "I will make a 25 song Hip-Hop playlist based on your preferences", creator_id: 3, price: 5, image_url: "https://www.filepicker.io/api/file/op4a5CTvSzSqSRS8SgfC", description: "I have a vast knowledge of Hip-Hop, I know which rappers sound like others. If you let me know who you like, I will give you sick recommendations!"},
  {title: "I will save you from any villain", creator_id: 4, price: 5, image_url: "https://www.filepicker.io/api/file/4jsm66tRS0WQkKNvlWfr", description: "It can be pretty dangerous around here and there are always more than one person in danger. I will try and save everyone but, if you buy this gig, you'll be on the top of the priorty list."},
  {title: "I will have my dog tell you \"I love you\"", creator_id: 5, price: 5, image_url: "https://www.filepicker.io/api/file/D2kVoc6VRanRTPNScqn0", description:"My dog, Mishka, is famous and is very articulate, he can speak anything that I teach him. I can have him say \"I love you\" to you."},
  {title: "I will save you money by finding the best deal for you", creator_id: 6, price: 5, image_url: "https://www.filepicker.io/api/file/l5h8ZmMT9up2DNQHGeaQ", description:"Don't get fooled by \"Sales\" many times they are not actually on sale. In fact, some stores even raise prices of things for a day, to then bring it down to a \"Sale.\" I will find you real deals."},
  {title: "I will give you legal advice", creator_id: 7, price: 5, image_url: "https://www.filepicker.io/api/file/HV6qG1v0SqO13hk8pTal", description:"I can advise you legally in any situation, this valuable service can cost hundreds, if not thousands, of dollars, but I have enough money to go around so I can want to make this accessible to anyone."},
  {title: "I will make a short rap about you", creator_id: 3, price: 5, image_url: "https://www.filepicker.io/api/file/DHwGAtu7QGuDJlpONvLg", description:"I can dish out a rap about you. All I need to know is a couple of things about you and what you stand for."},
  {title: "I will mention your name in my next rap battle", creator_id: 3, price: 5, image_url: "https://www.filepicker.io/api/file/tlJobnnTS9ZkDANMrvMq", description: "In my next rap battle I will make a metaphor in your name talking about some quality you possess. These get recorded and shown to hundreds."},
  {title: "I will add your name to my Tupac Shrine", creator_id: 3, price: 5, image_url: "https://www.filepicker.io/api/file/JHG9cSdCT46e56AsykeA", description: "I have a shrine to honor Tupac Shakur, and can include your name in a piece of paper that will reside there forevermore. I can also say a prayer for him in your name."},
  {title: "I will submit your photo to the Daily Bugle", creator_id: 4, price: 5, image_url: "https://www.filepicker.io/api/file/CaYkCKfR0OGt87IbUWt4", description: "Because I've been so successful taking pictures of myself in the Spidey suit, I have special access to submit photos to the Daily Bugle directly. I can submit your picture for just $5"},
  {title: "I will pick an outift for you matching a celeb photo", creator_id: 6, price: 5, image_url: "https://www.filepicker.io/api/file/xlbAvsjGQ7Te80CyT6vg", description: "you show me a picture of any celebrity and I will find the entire outfit for you to purchase online. These sometimes can be very hard to figure out but I know all of the styles and brands and can match anything, even up to what exact ring the celeb is wearing."},
  {title: "I will send a happy birthday snapchat on your behalf", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/FsHUUYAQROOJsJkAd1q9", description: "Sending a birthday wish is considered an act of love and kindness. However, in some cases people don't pick up their phone or check their emails in order to receive their birthday wishes. I will gladly send a Snapchat to the loved one of your choice. Snapchat users are very famous for always checking their snapchats, there are no 'over-full' inboxes."},
  {title: "I will do a security analysis of your website", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/P6BbUAt4SkqTfTqk5lmD", description: "I will do a full security analysis of your website including reports on the most common vulnerabilities. I will check your site for Cross-site Scripting, SQL Injection attacks and HTML injection attacks. Your site may be at risk and all of your data could be compromised. Do not fall victim to hackers who mess up people's sites for fun."},
  {title: "I will compose a 30 second theme song", creator_id: 6, price: 5, image_url: "https://www.filepicker.io/api/file/yDJnpkFeRMNdEEyv9doQ", description: "Everyone remembers the theme song to \'Friends\' and for good reason. The song exemplifies what the show is about and gets people excited becuase the song is part of the show's branding. I have a Bachelor's in Music Composition and can create a catchy theme song for you or your company. By default you receive an mp3."}
  
  
  

])

GigExtra.create!([
  {gig_id: 17, title: "I will create a snapchat account for you so you can get started", price: 5},
  {gig_id: 17, title: "I will record the snapchat inside a Maserati GranTurismo", price: 25},
  {gig_id: 17, title: "I will sing the entire happy birthday song in the 10 seconds allotted by snapchat", price: 10},
  {gig_id: 17, title: "I will say happy birthday in the language of your choice (default is english)", price: 5},
  {gig_id: 2, title: "I will play a guitar in the background", price: 5},
  {gig_id: 2, title: "I will record the video on a night-time background with the stars showing", price: 5},
  {gig_id: 3, title: "I will add the map to your site in under 5 hours", price: 15},
  {gig_id: 4, title: "I will send you the mp3 file", price: 5},
  {gig_id: 4, title: "I will narrate the story in a gladiator voice", price: 10},
  {gig_id: 4, title: "I will narrate the story in Daffy Duck's voice", price: 10},
  {gig_id: 5, title: "I will include the Northern Lights in your photo", price: 5},
  {gig_id: 6, title: "I will include a diet plan for the next 4 weeks", price: 15},
  {gig_id: 6, title: "I will call you every 4 hours to make sure you are making progress on the program", price: 20},
  {gig_id: 6, title: "I will send you a video series of workouts 10 HOURS LONG ", price: 20},
  {gig_id: 7, title: "I will expand the playlist to 50 songs", price: 5},
  {gig_id: 7, title: "I will make the playlist in any genre other than Hip-Hop", price: 20},
  {gig_id: 8, title: "I will take a photograh of me saving you and post it on the Official Spiderman Instagram", price: 25},
  {gig_id: 8, title: "I will stand up to ANY villain, including Venom", price: 15},
  {gig_id: 8, title: "I will give you my autograph on any poster or picture", price: 10},
  {gig_id: 9, title: "My dog will include your first name when he says \"I love you\"", price: 10},
  {gig_id: 9, title: "I will buy extra treats for my dog in your name", price: 5},
  {gig_id: 10, title: "I will compare prices on a bonus of 25 different sources", price: 10},
  {gig_id: 11, title: "I will send a Cease and Desist letter to the address and recipient of your choice", price: 15},
  {gig_id: 12, title: "I will deliver the rap in under 6 hours", price: 10},
  {gig_id: 12, title: "I will make the rap twice as long (40 lines)", price: 5},
  {gig_id: 13, title: "I will add 3 lines about you in the battle", price: 5},
  {gig_id: 13, title: "I will give you the recording of the rap battle", price: 10},
  {gig_id: 14, title: "I will say a prayer at the shrine in your name", price: 5},
  {gig_id: 15, title: "I will give my own personal pitch for the photo", price: 15},
  {gig_id: 15, title: "I will put a \"Priority\" stamp on the photo and put it on the Boss's desk", price: 10},
  {gig_id: 16, title: "I will match all of the celeb\'s jewelry items.", price: 10},
  {gig_id: 16, title: "I will add an extra item that will give you more flair", price: 10},  
  {gig_id: 1, title: "I will draw a full group of up to 5 people", price: 20},
  {gig_id: 1, title: "I will draw your pet if included in the picture", price: 10},
  {gig_id: 1, title: "I will draw a background themed to any time of the year", price: 5},
  {gig_id: 18, title: "I will include a report with specifics on how to fix each vulnerability", price: 10},
  {gig_id: 18, title: "I will give you a 15 minute skype interview explaining how to prevent future vulnerabilities", price: 5},
  {gig_id: 19, title: "I will add lyrics to the instrumentals", price: 5},
  {gig_id: 19, title: "I will include the musical score for the song", price: 15},
  {gig_id: 19, title: "I will extend the song to 1 minute long", price: 5},
  {gig_id: 19, title: "I will deliver you the song in mp3 and wav format", price: 5}    
])

Order.create!([
  {buyer_id: 8, gig_id: 1},
  {buyer_id: 3, gig_id: 1},
  {buyer_id: 8, gig_id: 2},
  {buyer_id: 8, gig_id: 3},
  {buyer_id: 8, gig_id: 4},
  {buyer_id: 8, gig_id: 5},
  {buyer_id: 1, gig_id: 9}
])

Review.create!([
  {content: "The best version of me I've ever seen! Perfect drawing skills.", stars: 5, order_id: 1},
  {content: "Terrible. The picture of \"me\" turned out to look 99% like Justin Beiber. Beware this is a fraud.", stars: 1, order_id: 2},
])
