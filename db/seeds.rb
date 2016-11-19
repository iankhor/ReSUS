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
    { name: 'Not sure' },
    {   name: 'Aortic surgery', 
        specialty: Specialty.where(name: 'Cardiothoracic Surgery') 
    },

    {   name: 'Cardiac surgery',
        specialty: Specialty.where(name: 'Cardiothoracic Surgery') 
    },

    {   name: 'Thoracic Surgery',
        specialty: Specialty.where(name: 'Cardiothoracic Surgery') 
    },

    {   name: 'Hip surgery or replacement',
        specialty: Specialty.where(name: 'Orthopedics') 
    },

    {   name: 'Knee surgery or replacement',
        specialty: Specialty.where(name: 'Orthopedics') 
    },

    {   name: 'Tendonitis',
        specialty: Specialty.where(name: 'Orthopedics') 
    },

    {   name: 'Lupus',
        specialty: Specialty.where(name: 'Rheumatology') 
    },

    {   name: 'Gout',
        specialty: Specialty.where(name: 'Rheumatology') 
    }
])


Specialty.create([
    {   name: 'Cardiothoracic Surgery',
        medical_condition: MedicalCondition.where(name: 'Aortic surgery')
    },

    {   name: 'Cardiothoracic Surgery',
        medical_condition: MedicalCondition.where('Cardiac surgery')
    },

    {   name: 'Cardiothoracic Surgery',
        medical_condition: MedicalCondition.where('Thoracic surgery')
    },

    {   name: 'Orthopedics',
        medical_condition: MedicalCondition.where('Hip surgery or replacement')
    },

    {   name: 'Orthopedics',
        medical_condition: MedicalCondition.where('Knee surgery or replacement')
    },

    {   name: 'Orthopedics',
        medical_condition: MedicalCondition.where('Tendonitis')
    },

    {   name: 'Rheumatologyy',
        medical_condition: MedicalCondition.where('Lupus')
    },

    {   name: 'Rheumatologyy',
        medical_condition: MedicalCondition.where('Gout')
    },

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