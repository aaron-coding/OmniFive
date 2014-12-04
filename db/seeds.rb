Gig.create!([
  {title: "I will sing hey there Delilah, customized to your name", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/N3UbKSJJS9ygMwR9E3as", description: "I will sing hey there Delilah, customized to your name"},
  {title: "I will add Google Maps to your existing website", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/LUdINzJsRYqbfMSqKpak", description: "I will add Google Maps to your existing website"},
  {title: "I will write 150 words of original content", creator_id: 3, price: 5, image_url: "https://www.filepicker.io/api/file/r2Kll5yQse9w0DYpfZ4G", description: "I will write 150 words of original content"},
  {title: "I will send a personalized happy birthday snapchat on your behalf", creator_id: 1, price: 5, image_url: "https://www.filepicker.io/api/file/J1X3hmuRxx5RwPMAFsgg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vulputate nibh sit amet efficitur sodales. Phasellus dictum velit nec tellus blandit consectetur. Pellentesque non viverra odio. Etiam condimentum augue sed magna auctor rutrum. Nam porta sodales lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed iaculis, metus tempus malesuada cursus, erat nunc scelerisque lectus, non consequat elit erat sit amet massa. Sed eget viverra tortor, vel euismod justo. <br > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vulputate nibh sit amet efficitur sodales. Phasellus dictum velit nec tellus blandit consectetur. Pellentesque non viverra odio. Etiam condimentum augue sed magna auctor rutrum. Nam porta sodales lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed iaculis, metus tempus malesuada cursus, erat nunc scelerisque lectus, non consequat elit erat sit amet massa. Sed eget viverra tortor, vel euismod justo.<br>"},
  {title: "I will photoshop the sky into the color of your choice", creator_id: 16, price: 5, image_url: "https://www.filepicker.io/api/file/XoIndkmSSNu9DdH357VK", description: "I have many years of photoshop experience and can blend in any color into the sky. I can make it look also like the Northern Lights, but for that you have to add a Gig Extra"},
  {title: "I will get you ripped with a workout program", creator_id: 16, price: 5, image_url: "https://www.filepicker.io/api/file/OexfPZZURoqPxg9u9M8A", description: "I will lay out a rigorous program that will get you ripped guaranteed."}
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

User.create!([
  {username: "joe", password_digest: "$2a$10$8CDrtZXQLDYBn/KqjVEew.ewVhaXx4HgP/6z1IMHJdkNVYZRb/UP2", session_token: "DoWEs8iFc9GNGFX1CQflpw==", creator_desc: "joe", image_url: "/assets/default-avatar.jpg"},
  {username: "joejoe", password_digest: "$2a$10$xAU0lm3dZzlIHfQWL.zCu.eVdi0kzeHwvhnLVFOCUCRZWiSoZwnGq", session_token: "BT47wydL9Ow255mMW6cNWQ==", creator_desc: "joejoe", image_url: "/assets/default-avatar.jpg"},
  {username: "blah", password_digest: "$2a$10$VTyEuaqj4KaoCpZvw1aulehMntygKm.sxRe4LSWi0HxDuzr9t2dyi", session_token: "WXuP0Lk/Pc8TyadQyqtD0g==", creator_desc: nil, image_url: "/assets/default-avatar.jpg"},
  {username: "ookoko", password_digest: "$2a$10$OfI3wpyDDr1kxTrjdVydlu7MzcH5xmxJ51jdppqXXrpz5pjnHPjGa", session_token: "gIayz0pEmD2um949DOYb3w==", creator_desc: nil, image_url: "/assets/default-avatar.jpg"},
  {username: "yyyy", password_digest: "$2a$10$Obb//zvXFsezrwXgn63npOMAGEeYiumt2u1DoYgEkTFtIu3eV.QIK", session_token: "h5Wp+W9bQSM+62tWI+COLw==", creator_desc: nil, image_url: "/assets/default-avatar.jpg"},
  {username: "andrew", password_digest: "$2a$10$hbZ/pEeZQXedYbZYY1rxFu9iZ2fh73Uq3qt4ZPTGPw1Lh3nQeGlRG", session_token: "diZgwc/OUIGsM+TNCCAjyQ==", creator_desc: "", image_url: ""},
  {username: "aaron", password_digest: "$2a$10$WbUTnnMoDh/5ZxLUuTUz2O1cKljItWJAAfgQNii0x4YP/PqY7WTUG", session_token: "HEFaf9d8UHMtrpJb2OiN4w==", creator_desc: "", image_url: "https://www.filepicker.io/api/file/iXfItvzURqBd2Y4qNpsw"},
  {username: "yooooo", password_digest: "$2a$10$iuF1FpybZ4131yAMiewleujrv5VVX3eP9Rqw5yra4rn2N2b2yrYVK", session_token: "JzsxgrVZLtCNx9gIF7iHTQ==", creator_desc: "", image_url: "https://www.filepicker.io/api/file/SFgjwAQQnaQGrEcOl1VQ"},
  {username: "Aaron", password_digest: "$2a$10$0NQ.Nxs7gVso8LXNAzdq3uZz2YZhxq7D7JYjmkyb3FywMkgjHzx.6", session_token: "e7WrEdW4T3ZADYZ/rn3DRQ==", creator_desc: "I have a knack for certain things, and can share them with you. I'm definitely a geek and I'll let you take advantage of that!", image_url: "https://www.filepicker.io/api/file/FGtp72d1RlaOUw1hGJYa"},
  {username: "SuperDesigner", password_digest: "$2a$10$4c3TUYw/97JqSeYbSmaGb.cfQ/a6TCKk1C3uOX1G537Wb6/18VoCS", session_token: "D+VH9C+/ePumHBBSGtCBfA==", creator_desc: nil, image_url: "/assets/default-avatar.jpg"},
  {username: "superDesigner", password_digest: "$2a$10$1kt7I0J3OV8xCE1rLoQdMO6UTekVeWu5kUNuehLJXr.SW6iARwIdS", session_token: "RZhR7zgS5oTmb4NIJzyUYw==", creator_desc: "I can design anything for you. omgomg wowowow this worked", image_url: "https://www.filepicker.io/api/file/9eJbOMxRimHqasF5cuSB"}
])
