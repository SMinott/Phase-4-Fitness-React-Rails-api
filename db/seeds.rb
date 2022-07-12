
puts "SEEDING IN PROGRESS"

c1 = Coach.create(
    name: "Mimi Torres",
    bio: "Expert in Vinyasa flow yoga to stretch, lengthen and strengthen the body while learning how to quiet the mind to be present on the mat.",
    image_coach: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fs3.amazonaws.com%2Fzenplannerwordpress-stack0%2Fwp-content%2Fuploads%2Fsites%2F346%2F2019%2F09%2F05184036%2FMimi-Torres-Yoga-Instructor.png&imgrefurl=https%3A%2F%2Fonebodywholehealth.com%2Fabout-us%2Fmimi-torres-yoga-instructor%2F&tbnid=qkB5BuHHkq-hLM&vet=10CAoQMyjSAWoXChMIuJeTpP_w-AIVAAAAAB0AAAAAEAM..i&docid=dwUgT2j7G94lbM&w=421&h=500&q=Yoga%20instructor%2C%20png&ved=0CAoQMyjSAWoXChMIuJeTpP_w-AIVAAAAAB0AAAAAEAM",
)
c2 = Coach.create(
    name: "Dwayne Johnson",
    bio: "Licensed Body Builder with over 20 years of experience",
    image_coach: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.pngitem.com%2Fpimgs%2Fm%2F139-1390026_the-rock-png-transparent-png.png&imgrefurl=https%3A%2F%2Fwww.pngitem.com%2Fmiddle%2FmhTJRJ_the-rock-png-transparent-png%2F&tbnid=xkHb5ZRFLpGmcM&vet=12ahUKEwjh5Zu__fD4AhWaQEIHHd6mCzMQMygkegUIARCiAg..i&docid=_3z-Di562Ob27M&w=860&h=790&q=The%20rock%2C%20png&ved=2ahUKEwjh5Zu__fD4AhWaQEIHHd6mCzMQMygkegUIARCiAg",
)
a1 = Activity.create(
    event: "Yoga",
    description: "Yoga offers physical and mental health benefits for people of all ages. For those going through an illness, recovering from surgery or living with a chronic condition, yoga can become an integral part of your treatment and potentially hasten healing.",
    location: "Santa Barbara CA",
    image_activity: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.pngmart.com%2Ffiles%2F8%2FYoga-Pose-PNG-Transparent-Background.png&imgrefurl=https%3A%2F%2Fwww.pngmart.com%2Fimage%2F130427&tbnid=huIJdGZdjOxkJM&vet=12ahUKEwi2i8iH-_D4AhWFlFMKHckQChgQMygmegUIARCuAg..i&docid=PMtR2D-SXh8NnM&w=948&h=723&q=Yoga%2C%20png&ved=2ahUKEwi2i8iH-_D4AhWFlFMKHckQChgQMygmegUIARCuAg",
    coach_id: c1.id
)
a2 = Activity.create(
    event: "Body Building",
    description: "Bodybuilding is the use of progressive resistance exercise to control and develop one's muscles by muscle hypertrophy for aesthetic purposes. It is distinct from similar activities such as powerlifting because it focuses on physical appearance instead of strength.",
    location: "Brooklyn NY",
    image_activity: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.pngmart.com%2Ffiles%2F8%2FYoga-Pose-PNG-Transparent-Background.png&imgrefurl=https%3A%2F%2Fwww.pngmart.com%2Fimage%2F130427&tbnid=huIJdGZdjOxkJM&vet=12ahUKEwi2i8iH-_D4AhWFlFMKHckQChgQMygmegUIARCuAg..i&docid=PMtR2D-SXh8NnM&w=948&h=723&q=Yoga%2C%20png&ved=2ahUKEwi2i8iH-_D4AhWFlFMKHckQChgQMygmegUIARCuAg",
    coach_id: c2.id
)
client1 = Client.create(
    first_name: "Serene",
    last_name: "Tempest",
    age: 22,
    image_client: 'http://capitolmed.com/our-team/',
    email: "stempest@email.com",
    member: true,
    fee: 100,
    password_digest: "password"
)
client2 = Client.create(
    first_name: "Barrington",
    last_name: "Steele",
    age: 18,
    image_client: "http://capitolmed.com/our-team/",
    email: "bsteele@email.com",
    member: true,
    fee: 150,
    password_digest: "password"
)
r1 = Review.create(
    title: "Relaxed & stretched",
    detail: "This was the best yoga session I have ever had.",
    score: 5,
    activity_id: a1.id,
    client_id: client1.id
)
r2 = Review.create(
    title: "Felt the burn",
    detail: "That workout left me so sore, so I know it's working.",
    score: 5,
    activity_id: a2.id,
    client_id: client2.id
)


puts 'SEEDING COMPLETE!!!'
