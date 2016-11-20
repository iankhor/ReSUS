# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BloodType.create([
    { name: 'Not sure' },
    { name: 'A+' },
    { name: 'A-' },
    { name: 'B+' },
    { name: 'B-' },
    { name: 'AB+' },
    { name: 'AB-' },
    { name: 'O+' },
    { name: 'O-' }
])

MedicalCondition.create([
    {   name: 'Not sure' },
    {   name: 'Aortic surgery'},
    {   name: 'Cardiac surgery'},
    {   name: 'Thoracic Surgery'},
    {   name: 'Hip surgery or replacement',},
    {   name: 'Knee surgery or replacement'},
    {   name: 'Tendonitis'},
    {   name: 'Lupus'},
    {   name: 'Gout'}
])


Specialty.create([
    {   name: 'Cardiothoracic Surgery'},
    {   name: 'Orthopedics'},
    {   name: 'Rheumatologyy'}
])

MaritalStatus.create([
    { name: 'Single' },
    { name: 'Married' },
    { name: 'Widow' }
])

Ethnicity.create([
    { name: 'Eth Placeholer 1' },
    { name: 'Eth Placeholer 2' },
    { name: 'Eth Placeholer 3' }
])

Allergy.create([
    { name: 'Food' },
    { name: 'Skin' },
    { name: 'Dust' },
    { name: 'Insect Sting' },
    { name: 'Allergic Rhinitis' },
    { name: 'Latex Allergy' },
    { name: 'Mold Allergy' },
    { name: 'Sinus Information' }
])

Gender.create([
    { name: 'Male' },
    { name: 'Female' }
])

Region.create([
    { name: 'WA' },
    { name: 'NSW' },
    { name: 'VIC' },
    { name: 'QLD' },
    { name: 'ACT' },
    { name: 'TAS' }
])

ValidRole.create([
    #id 1 = patients
    #id 2 = practitioners

    { name: 'I want to seek treatment' }, 
    { name: 'I want to help' }
])

patient_user = User.create!(
  email: 'ian@ian.com',
  password: '123123',
  password_confirmation: '123123'
)

patient2_user = User.create!(
  email: 'jack@jack.com',
  password: '123123',
  password_confirmation: '123123'
)

PatientProfile.create!([
  {
  user:             patient_user,
  first_name:       'ian',
  last_name:        'khor',
  height:           '312',
  weight:           '123',
  date_of_birth:    '555',
  gender:            Gender.find(2),
  region:            Region.find(2),
  ethnicity:         Ethnicity.find(2),
  blood_type:        BloodType.find(2),
  marital_status:    MaritalStatus.find(2),
  allergy:           Allergy.find(2),
  contact_number:   '999'
  },

 {
  user:             patient2_user,
  first_name:       'jack',
  last_name:        'saw',
  height:           '312',
  weight:           '123',
  date_of_birth:    '555',
  gender:            Gender.find(2),
  region:            Region.find(3),
  ethnicity:         Ethnicity.find(3),
  blood_type:        BloodType.find(6),
  marital_status:    MaritalStatus.find(2),
  allergy:           Allergy.find(2),
  contact_number:   '000'
  },
])

Listing.create([
    {
        patient:                patient2_user,
        medical_condition:      MedicalCondition.find(2),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 1 "
    },

    {
        patient:                patient_user,
        medical_condition:      MedicalCondition.find(5),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 2" 
    },

    {
        patient:                patient_user,
        medical_condition:      MedicalCondition.find(4),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 3"
    },

    {
        patient:                patient2_user,
        medical_condition:      MedicalCondition.find(4),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 3"
    }

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