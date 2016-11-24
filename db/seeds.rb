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
    {   name: 'Aortic surgery'},
    {   name: 'Cardiac surgery'},
    {   name: 'Thoracic Surgery'},
    {   name: 'Hip surgery or replacement',},
    {   name: 'Knee surgery or replacement'},
    {   name: 'Tendonitis'},
    {   name: 'Lupus'},
    {   name: 'Gout'},
    {   name: 'Sclerosis'},
    {   name: 'Spinal Cord Tumor'}
])


Specialty.create([
    {   name: 'Cardiothoracic Surgery'},
    {   name: 'Orthopedics'},
    {   name: 'Rheumatologyy'},
    {   name: 'Neurology'}
])

specialty_1 = Specialty.find(1)
specialty_2 = Specialty.find(2)
specialty_3 = Specialty.find(3)
specialty_4 = Specialty.find(4)

condition_1 = MedicalCondition.find(1)
condition_2 = MedicalCondition.find(2)
condition_3 = MedicalCondition.find(3)
condition_4 = MedicalCondition.find(4)
condition_5 = MedicalCondition.find(5)
condition_6 = MedicalCondition.find(6)
condition_7 = MedicalCondition.find(7)
condition_8 = MedicalCondition.find(8)
condition_9 = MedicalCondition.find(9)
condition_10 = MedicalCondition.find(10)

# Cardiothoracic
specialty_1.seeks.create(medical_condition: condition_1)
specialty_1.seeks.create(medical_condition: condition_2)
specialty_1.seeks.create(medical_condition: condition_3)

# Orthopedics
specialty_2.seeks.create(medical_condition: condition_4)
specialty_2.seeks.create(medical_condition: condition_5)
specialty_2.seeks.create(medical_condition: condition_6)

# Rheumatologyy
specialty_3.seeks.create(medical_condition: condition_7)
specialty_3.seeks.create(medical_condition: condition_8)

# Rheumatologyy
specialty_4.seeks.create(medical_condition: condition_9)
specialty_4.seeks.create(medical_condition: condition_10)

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

# patient_user = User.create!(
#   email: 'tony@marvel.com',
#   password: '123123',
#   password_confirmation: '123123',
#   role: '1'
# )

# patient2_user = User.create!(
#   email: 'steve@marvel.com',
#   password: '123123',
#   password_confirmation: '123123',
#   role: '1'
# )

User.create!([
    {
        email: 'tony@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '1'
    },

    {
        email: 'steve@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '1'
    },

    {
        email: 'hank@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '1'
    }
])

PatientProfile.create!([
  {
  user:             User.find(1),
  first_name:       'Tony',
  last_name:        'Stark',
  height:           '180',
  weight:           '60',
  date_of_birth:    '24/09/1975',
  gender:            Gender.find(1),
  region:            Region.find(2),
  ethnicity:         Ethnicity.find(2),
  blood_type:        BloodType.find(2),
  marital_status:    MaritalStatus.find(2),
  allergy:           Allergy.find(2),
  contact_number:   '999'
  },

 {
  user:             User.find(2),
  first_name:       'Steve',
  last_name:        'Roger',
  height:           '200',
  weight:           '98',
  date_of_birth:    '24/9/1945',
  gender:            Gender.find(1),
  region:            Region.find(3),
  ethnicity:         Ethnicity.find(3),
  blood_type:        BloodType.find(6),
  marital_status:    MaritalStatus.find(2),
  allergy:           Allergy.find(2),
  contact_number:   '000'
  },

  {
  user:             User.find(3),
  first_name:       'Hank',
  last_name:        'Pymm',
  height:           '200',
  weight:           '98',
  date_of_birth:    '24/9/1945',
  gender:            Gender.find(1),
  region:            Region.find(3),
  ethnicity:         Ethnicity.find(3),
  blood_type:        BloodType.find(6),
  marital_status:    MaritalStatus.find(2),
  allergy:           Allergy.find(2),
  contact_number:   '000'
  }
])

Listing.create([
    {
        patient:                User.find(1),
        medical_condition:      MedicalCondition.find(1),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 1 "
    },

    {
        patient:                User.find(1),
        medical_condition:      MedicalCondition.find(2),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 2" 
    },

    {
        patient:                User.find(1),
        medical_condition:      MedicalCondition.find(10),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 3"
    },

    {
        patient:                User.find(2),
        medical_condition:      MedicalCondition.find(3),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 3"
    },

    {
        patient:                User.find(2),
        medical_condition:      MedicalCondition.find(7),
        comments:               "Lorem est irure cupidatat ex ipsum anim culpa est laborum.",
        photo_medical_data:     "some link 3"
    }


])


# practitioner_user = User.create!(
#   email: 'drstrange@marvel.com',
#   password: '123123',
#   password_confirmation: '123123',
#   role: '2'
# )

# practitioner2_user = User.create!(
#   email: 'thor@marvel.com',
#   password: '123123',
#   password_confirmation: '123123',
#   role: '2'
# )

User.create!([
    {
        email: 'drstrange@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '2'
    },

    {
        email: 'thor@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '2'
    },

    {
        email: 'hulk@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '2'
    },

    {
        email: 'reed@marvel.com',
        password: '123123',
        password_confirmation: '123123',
        role: '2'
    }
])



PractitionerProfile.create!([
  {
  user:             User.find(4),
  first_name:       'Stephen',
  last_name:        'Strange',
  gender:            Gender.find(1),
  region:            Region.find(2),
  specialty:         Specialty.find(4),
  registration_number: 'MEDREG00001'
  },

  {
  user:             User.find(5),
  first_name:       'Donald',
  last_name:        'Blake',
  gender:            Gender.find(1),
  region:            Region.find(4),
  specialty:         Specialty.find(1),
  registration_number: 'MEDREG00002'
  },

  {
  user:             User.find(6),
  first_name:       'Bruce',
  last_name:        'Banner',
  gender:            Gender.find(1),
  region:            Region.find(4),
  specialty:         Specialty.find(3),  
  registration_number: 'MEDREG00003'
  },

  {
  user:             User.find(7),
  first_name:       'Reed',
  last_name:        'Richards',
  gender:            Gender.find(1),
  region:            Region.find(3),
  specialty:         Specialty.find(4), 
  registration_number: 'MEDREG00003'
  }
])

Quote.create([
    {
        practitioner:      User.find(6), #ok
        quote_cost:        9000 ,
        listing:           Listing.find(5), #Lupus
        comments:          "Uncurable but i can try",
        payment_status:    'Pending'
    }


])

