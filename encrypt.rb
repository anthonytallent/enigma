require './lib/enigma'
# require './lib/shift'

enigma = Enigma.new('82648', '240818')

handle = File.open(ARGV[0], "r")

incoming_message = handle.read 

handle.close

encrypted = enigma.encrypt(incoming_message, enigma.key, enigma.date)

writer = File.open(ARGV[1], "w")

writer.write(encrypted)

writer.close