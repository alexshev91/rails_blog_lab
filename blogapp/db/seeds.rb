yoda = Post.create({title: "Yoda", description: "little green man", author: "TESTING"})
luke = Post.create({title: "Luke", description: "Young Jedi", author: "TESTING"})
vader = Post.create({title: "Darth Vader", description: "Father of luke", author: "TESTING"})

luke.comments.create({guest_name: "hmmm", content: "you must unlearn what you have learned"});
luke.comments.create({guest_name: "Oh wow", content: "jedi's rock"})

comment = Comment.create({guest_name: "Darkside!", content: "give into your anger"})
vader.comments << comment

tag1 = Tag.create({name: "TAG ONE NAME"})
tag2 = Tag.create({name: "TAG TWO NAME"})
tag3 = Tag.create({name: "TAG THREE NAME"})

luke.tags << tag1
luke.tags << tag2
luke.tags << tag3

vader.tags << tag1
vader.tags << tag2