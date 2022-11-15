require './lib/enigma'

enigma = Enigma.new(ARGV[2].tr('^0-9', ''), ARGV[3].tr('^0-9', ''))

handle = File.open(ARGV[0], "r")

incoming_message = handle.read

incoming_message = eval(incoming_message)

handle.close

encrypted = enigma.decrypt(incoming_message[:encryption], enigma.key, enigma.date)

writer = File.open(ARGV[1], "w")

writer.write(encrypted)

writer.close