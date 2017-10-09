# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
User.create!(
            email: 'test@gobble.com',
            user_name: 'gobble',
            password: 'password',
            password_confirmation: 'password'
            )
User.create!(
            email: 'tomh@pawnee.gov',
            user_name: 'tommy_timberlake',
            password: 'password',
            password_confirmation: 'password'
            )
User.create!(
            email: 'ryan@wuph.com',
            user_name: 'wuphceo',
            password: 'password',
            password_confirmation: 'password'
            )
Post.create!(
            text: "Four green lights in a row #blessed",
            user_id: 4
            )
Post.create!(
            text: "Stanley yelled at my today. That was one of the most frightening experiences of my life",
            user_id: 5
            )
Post.create!(
            text: "Drive faster, blue civic. Daaaaaaaaamn #soccermoms",
            user_id: 4
            )
Post.create!(
            text: "Gotta pass this lady on the akjasdkg",
            user_id: 4
            )
Post.create!(
            text: "It's called owling. You'll hear about it in 8 months",
            user_id: 5
            )
Post.create!(
            text: "Just hit a hydrant, but I survived #Unbreakable",
            user_id: 4
            )
Post.create!(
            text: "Did you see saw??",
            user_id: 5
            )