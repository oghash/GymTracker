# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


=begin
routines = Routine.create(
    [
        { name: 'Bicep Curls'},
        { name: 'Bench Press (Smith)'},
        { name: 'Incline DB'},
        { name: 'Dips'},
        { name: 'Cable Crossovers'}
    ]
)
=end

routines = [ { name: 'Bicep Curls' },
             { name: 'Bench Press (Smith)' },
             { name: 'Incline DB' },
             { name: 'Dips' },
             { name: 'Cable Crossovers '},
             { name: 'Skullcrushers' },
             { name: 'Close-Grip Bench (Smith)' },
             { name: 'Cable Pushdowns' },
             { name: 'Dumbbell Extension' } ]

routines.each { |name| Routine.find_or_create_by_name(name) }

=begin
routines.each { |namez|
  puts namez
  puts 1

  if not Routine.find_by_name(namez)
    #Routine.create()
    puts namez
    puts 2
  end
}
=end
