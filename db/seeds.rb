Machine.destroy_all
Machine.reset_pk_sequence

started_seeding = Time.now

machines = [
    { brand: "Singer", model: "221", bobbin: "L", needle: "705H" },
    { brand: "Bernina", model: "117", bobbin: "M", needle: "DBX1" },
    { brand: "Necchi", model: "BU", bobbin: "15", needle: "705H" },
    { brand: "Phoenix", model: "283", bobbin: "M", needle: "705H" },
    { brand: "Keller", model: "Perfekta", bobbin: "M", needle: "DBX1" },
    { brand: "Vigorelli", model: "Robot", bobbin: "15", needle: "705H" }
]

machines.each{ | machine | Machine.create( machine ) }

done_seeding = Time.now

puts "🌱 🌱 🌱 Seeded: #{ done_seeding - started_seeding } secs. 🌱 🌱 🌱"