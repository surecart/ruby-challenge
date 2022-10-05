require 'rspec'
require 'nokogiri'
require_relative "../lib/speech_analyzer"

describe "SpeechAnalyzer" do
    
    context "#analyze_speech" do
        it "returns number of lines each speaker" do
            xml_doc_data = Nokogiri::XML(open("./../spec/fixtures/macbeth.xml"))
            speech_analyzer = SpeechAnalyzer.new
            results = speech_analyzer.analyze_speech(xml_doc_data)

            expect(results[:MACBETH]).to eq(2)
            expect(results[:FLEANCE]).to eq(3)
            expect(results[:BANQUO]).to eq(8)
            expect(results[:ALL]).to eq(nil) 
        end
    end

end
