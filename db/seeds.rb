# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MenuItem.destroy_all

# Vorspeise

MenuItem.create(place: 1, name: "Tzatziki mit Pita", price: 4.80, food_type: "vorspeise", description: "hausgemachte Joghurt Dip mit Knoblauch, Gurken, Olivenöl & gegrillter griechische Fladenbrot")
MenuItem.create(place: 2, name: "Tirokafteri mit Pita", price: 5.40, food_type: "vorspeise", description: "hausgemachte Pikanter griechischer Schafskäse-Feta Dip & gegrillter griechischer Fladenbrot")
MenuItem.create(place: 3, name: "Taramas mit Pita", price: 4.80, food_type: "vorspeise", description: "Fischrogen Dip & gegrilltes griechisches Fladenbrot")
MenuItem.create(place: 4, name: "Saganaki", price: 6.80, food_type: "vorspeise", description: "panierter griechischer Schafskäse")
MenuItem.create(place: 5, name: "Gemüseteller", price: 7.50, food_type: "vorspeise", description: "„Kaltgericht“ Zucchini, Aubergine, Paprika, Knoblauch &amp; Essig Vinaigrette")
MenuItem.create(place: 6, name: "Knoblauch Brot", price: 2.90, food_type: "vorspeise", description: "")

# Salate

MenuItem.create(place: 20, name: "Griechischer Bauern Salat", price: 8.00, food_type: "salat", description: "Tomaten, Gurken, Zwiebeln, Paprika, Oliven, Schafskäse, Olivenöl & Oregano")
MenuItem.create(place: 21, name: "Gemischter Salat", price: 6.90, food_type: "salat", description: "Bunter Salat mit hausgemachtem Rohkostsalat & hausgemachtem Dressing")
MenuItem.create(place: 22, name: "Gemischter Salat mit gebratenen Putenstreifen", price: 8.90, food_type: "salat", description: "Bunter Salat mit hausgemachtem Rohkostsalat & hausgemachtem Dressing")
MenuItem.create(place: 23, name: "Veganer Salat", price: 8.00, food_type: "salat", description: "hausgemachter Rohkostsalat mit großem buntem Salat & gebratenes Gemüse")

# Empfehlungen

MenuItem.create(place: 30, name: "Arni Giuvetsi mit Kritharaki", food_type: "empfehlung", price: 14.80, description: "Geschmorte Lammhaxe in Weinsoße mit Mediterranem Gemüse, griechischen Reisnudeln &amp; Schafskäse")
MenuItem.create(place: 31, name: "Bifteki gemisto, Tzatziki & Pommes", food_type: "empfehlung", price: 13.80, description: "Gegrilltes hausgemachtes Rinderhacksteak, gefüllt mit Schafskäse, Tomate &amp; Paprika")
MenuItem.create(place: 32, name: "Gegrilltes Hähnchenkeulensteak auf speziell hausgemachter", food_type: "empfehlung", price: 11.50, description: "Zitronen-Senf Sauce mit Pommes & Salat")

# Hauptgerichte

MenuItem.create(place: 41, name: "Gyros mit Tzatziki, Pommes & Salat", price: 11.50, food_type: "hauptgericht")
MenuItem.create(place: 42, name: "Gyros in Metaxasoße mit Pommes", price: 12.50, food_type: "hauptgericht", description: "Hausgemachte Cognacsauce mit Sahne & Gemüse")
MenuItem.create(place: 43, name: "Gyros mit gegrilltem Pita & Tzatziki", price: 9.90, food_type: "hauptgericht", description: "Tomaten, Zwiebeln und griechische Fladenbrot")
MenuItem.create(place: 44, name: "Souvlakia mit Tzatziki, Pommes & Salat", price: 9.90, food_type: "hauptgericht", description: "Gegrillter Schweinespieß, mariniert nach Griechischer Art")
MenuItem.create(place: 45, name: "Paidakia mit Tzatziki & Mediterranen Kartoffeln", price: 16.50, food_type: "hauptgericht", description: "Gegrillte Lammkoteletts")
MenuItem.create(place: 46, name: "Mixteller mit Tzatziki ,Reis & Salat", price: 16.90, food_type: "hauptgericht", description: "Verschiedene Fleischsorten")
MenuItem.create(place: 47, name: "Panierte Schnitzel vom Schweinerücken", price: 11.50, food_type: "hauptgericht", description: "Mit hausgemachter Bratensauce, Pommes & Salat")
MenuItem.create(place: 48, name: "Panierte Schnitzel vom Putenbrustfilet", price: 11.80, food_type: "hauptgericht", description: "Mit hausgemachter Bratensauce, Pommes & Salat")
MenuItem.create(place: 49, name: "Cordon Bleu vom Landschwein", price: 12.50, food_type: "hauptgericht", description: "mit hausgemachter Bratensauce, Pommes & Salat")