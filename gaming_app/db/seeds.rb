# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create!( name: 'Alex')
u2 = User.create!( name: 'Gerry')
u3 = User.create!( name: 'Barry')

g1 = Game.create!( user_id: u1.id, opponent_id: u2.id, diff: 1, result: 'w')
g2 = Game.create!( user_id: u3.id, opponent_id: u2.id, diff: 1, result: 'w')

m1 = g1.moves.create!(number: 1, value: 'X', user_id: 1)
m2 = g1.moves.create!(number: 2, value: '0', user_id: 1)
m3 = g1.moves.create!(number: 3, value: 'X', user_id: 1)
m4 = g1.moves.create!(number: 4, value: '0', user_id: 1)
m5 = g1.moves.create!(number: 5, value: 'X', user_id: 1)
m6 = g1.moves.create!(number: 6, value: '0', user_id: 1)
m7 = g2.moves.create!(number: 7, value: 'X', user_id: 1)
m8 = g2.moves.create!(number: 8, value: 'X', user_id: 1)

#email: 'a@a.com')
#email: 'g@g.com'
# email: 'b@b.com'