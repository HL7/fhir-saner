
# NOTE:  This script assumes there is a single text.div in your FSH file and that it is for the Capability Statement.
#        If you don't have a text.div, add the following within your CapSTmt:   '* text.div = ""'

require "json"
require "byebug"

def transferdiv(json, fsh, newfsh )
file  = File.read(json)
data_hash = JSON.parse(file)

newtext = data_hash["text"]["div"]
output = File.open(newfsh, 'w')
found = false
foundstatus = false

File.foreach(fsh).with_index do |line, line_num|
    if (line.include? "* test.status =")then
        foundstatus = true
    end
    if (line.include? "* text.div = ") then
        output.write("* text.div = #{newtext.dump}\n")
        found = true
    else
        output.puts "#{line}"
    end
 end

if (found == false ) then
    output.write("* text.div = #{newtext.dump}\n")
 end
 if (foundstatus == false ) then
    output.write("* text.status = #generated\n")
 end
end


Dir.glob('output/Cap*.json') do |cs_filename|
    puts "python3 ../CapStatement/R4CapStatement_NarrativeMaker.py #{cs_filename} output"
    `python3 ../CapStatement/R4CapStatement_NarrativeMaker.py #{cs_filename} output`
end

Dir.glob('./Narrative-*.json') do |json_filename|
    fsh_filename = json_filename.delete_prefix("./Narrative-").delete_suffix("json")+"fsh"
    newfsh_filename = "./" + fsh_filename
    fsh_filename = "./input/fsh/" + fsh_filename
    puts "fsh= " + fsh_filename + " newfsh = " + newfsh_filename + " json= " +json_filename
    transferdiv(json_filename, fsh_filename, newfsh_filename )
end
