# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BloodType.create([
    { name: 'A+' },
    { name: 'A-' },
    { name: 'B+' },
    { name: 'B-' },
    { name: 'AB+' },
    { name: 'AB-' },
    { name: 'O+' },
    { name: 'O-' }
])


# MedicalPractitionerProfile.create!([
#     {
#         first_name: "Ian",
#         last_name:  "Khor",
#         registration_number: "1234ABC"
#     },
    
#     {
#         first_name: "Sharon",
#         last_name:  "Chen",
#         registration_number: "1234ABC"
#     },

#     {
#         first_name: "Jason",
#         last_name:  "Hincliffe",
#         registration_number: "1234ABC"
#     }


# ])