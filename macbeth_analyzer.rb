require './lib/speech_analyzer'

speech_analyzer = SpeechAnalyzer.new
speaker_no_of_lines = speech_analyzer.macbeth_xml_data

#Print each speaker lines 
speaker_no_of_lines.each {|lines|
    puts "#{lines[1]} #{lines[0]}"
}