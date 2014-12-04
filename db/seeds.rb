User.create!([
  {username: "Aaron", password_digest: "$2a$10$0NQ.Nxs7gVso8LXNAzdq3uZz2YZhxq7D7JYjmkyb3FywMkgjHzx.6", session_token: "e7WrEdW4T3ZADYZ/rn3DRQ==", creator_desc: "I have a knack for certain things, and can share them with you. I'm definitely a geek and I'll let you take advantage of that!", image_url: "https://www.filepicker.io/api/file/FGtp72d1RlaOUw1hGJYa"},
  {username: "superDesigner", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "RZhR7zgS5oTmb4NIJzyUYw==", creator_desc: "I can design anything for you. omgomg wowowow this worked", image_url: "https://www.filepicker.io/api/file/9eJbOMxRimHqasF5cuSB"}
])

Gig.create!([
  {title: "I will sing hey there Delilah, customized to your name", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/N3UbKSJJS9ygMwR9E3as", description: "I will sing hey there Delilah, customized to your name"},
  {title: "I will add Google Maps to your existing website", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/LUdINzJsRYqbfMSqKpak", description: "I will add Google Maps to your existing website"},
  {title: "I will write 150 words of original content", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/r2Kll5yQse9w0DYpfZ4G", description: "I will write 150 words of original content"},
  {title: "I will send a personalized happy birthday snapchat on your behalf", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/J1X3hmuRxx5RwPMAFsgg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vulputate nibh sit amet efficitur sodales. Phasellus dictum velit nec tellus blandit consectetur. Pellentesque non viverra odio. Etiam condimentum augue sed magna auctor rutrum. Nam porta sodales lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed iaculis, metus tempus malesuada cursus, erat nunc scelerisque lectus, non consequat elit erat sit amet massa. Sed eget viverra tortor, vel euismod justo. <br > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vulputate nibh sit amet efficitur sodales. Phasellus dictum velit nec tellus blandit consectetur. Pellentesque non viverra odio. Etiam condimentum augue sed magna auctor rutrum. Nam porta sodales lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed iaculis, metus tempus malesuada cursus, erat nunc scelerisque lectus, non consequat elit erat sit amet massa. Sed eget viverra tortor, vel euismod justo.<br>"},
  {title: "I will photoshop the sky into the color of your choice", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/XoIndkmSSNu9DdH357VK", description: "I have many years of photoshop experience and can blend in any color into the sky. I can make it look also like the Northern Lights, but for that you have to add a Gig Extra"},
  {title: "I will get you ripped with a workout program", creator_id: 2, price: 5, image_url: "https://www.filepicker.io/api/file/OexfPZZURoqPxg9u9M8A", description: "I will lay out a rigorous program that will get you ripped guaranteed."}
])

GigExtra.create!([
  {gig_id: 1, title: "I will create a snapchat account for you so you can get started", price: 5},
  {gig_id: 1, title: "I will tell them happy birthday inside a Maserati GranTurismo", price: 25},
  {gig_id: 1, title: "I will tell them happy birthday in Spanish", price: 5}
])

Order.create!([
  
])

OrderExtra.create!([
  
])

