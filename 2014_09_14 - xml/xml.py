import xmltodict

document_file = open("notes.xml", "r") # Open a file in read-only mode
original_doc = document_file.read() # read the file object
#print(dir(xmltodict))
document = xmltodict.parse(original_doc) # Parse the read document string
note = document['note'] #Here we fetch the node childs
print("Original XML file: {0}".format(original_doc) )#print original file
print("Reminder for {0}, from {1}, content: {2}".format(note['to'], 
note['from'], note['body']) 
)#Print the content of the new parsed dict

