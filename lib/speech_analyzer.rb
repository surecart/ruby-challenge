require 'open-uri'
require 'nokogiri'

class SpeechAnalyzer
    MACBETH_BASE_URL = "http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"
    IGNORE_SPEAKER_NAME = :ALL

    def macbeth_xml_data
        xml_doc = Nokogiri::XML(open(MACBETH_BASE_URL))
        self.analyze_speech(xml_doc)
    end
    
    def analyze_speech(xml_doc)
        results = {}
        xml_doc.xpath("//SPEECH").each do |speech|
            speaker_name = ""
            speech.children.map do |speaker|
                if speaker.name == "SPEAKER"
                    speaker_name = speaker.text.to_sym
                    break
                end
            end
            next if speaker_name == IGNORE_SPEAKER_NAME
            speech_detail_with_count = {}
            speech.children.group_by(&:name).each { |k,v| speech_detail_with_count[k] = v.length }
            results[speaker_name] = (results[speaker_name] || 0)
            results[speaker_name] = results[speaker_name] + speech_detail_with_count["LINE"] if speech_detail_with_count.key?("LINE")
        end
        results
    end    
    
end
