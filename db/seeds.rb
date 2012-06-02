# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = [
  { name: 'Emanuel Petre', email: 'emanuel.petre@ziliko.com' }, 
  { name: 'Jeremy Fabre',  email: 'jeremy.fabre@ziliko.com' }, 
  { name: 'Alex Rouillard', email: 'alex.rouillard@ziliko.com' }, 
  { name: 'Alexander Southern', email: 'alexander.southen@ziliko.com' }, 
  { name: 'Francois Oligny-Lemieux', email: 'francois.oligny@ziliko.com' },
  { name: 'Pierre Derval', email: 'pierre.derval@ziliko.com' } 
].select{|p| Player.find_by_email(p[:email]).nil? }

Player.create(players)