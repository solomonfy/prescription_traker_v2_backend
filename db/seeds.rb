# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Prescription.destroy_all
Medication.destroy_all
Doctor.destroy_all
Appointment.destroy_all


medication_name = ["Asprin", "Lisinopril", "Atorvastatin", "Metformin"]
medication_strength = ["81mg", "5mg", "10mg", "1000mg"]
medication_precaution = ["Take it with food", "For your high blood pressure, Take it with food", "This is for your cholestrol, and take it during night time", "This is for your high blood sugar, take it with food"]
medication_category = ["Antidiabetic", "Anticholestrol", "Blood thinning", "Blood pressure"]
frequency = ["Once", "Twice", "Three times", "Four times"]
dose = ["Half", "One", "One and half", "Two", "Two and half"]
speciallity = ["GP", "Internist", "Cardiologist"]


4.times do
  User.create(
    first_name: Faker::Name.unique.first_name, 
    last_name: Faker::Name.unique.last_name, 
    age: Faker::Number.between(from: 45, to: 100),
    gender: Faker::Gender.binary_type,
    family_name: ""
  )
end

4.times do
  Medication.create(
    name: medication_name.sample,
    imprint: "",
    strength: medication_strength.sample,
    category: medication_category.sample,
    precaution: "",
    image: ""
  )
end


10.times do
  Prescription.create(
    user: User.all.sample,
    medication: Medication.all.sample,
    frequency: frequency.sample,
    dose: "",
    to_be_taken_on: "",
    taken: false,
    prescription_date: ""
  )
end

2.times do
  Doctor.create(
    first_name: Faker::Name.unique.first_name, 
    last_name: Faker::Name.unique.last_name, 
    speciallity: speciallity.sample,

  )
end


4.times do
  Appointment.create(
    user_id: User.all.sample.id,
    doctor_id: Doctor.all.sample.id,
    date: Faker::Date.between(from: '2019-09-23', to: '2020-05-25')
  )
end