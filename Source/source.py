KB = []
with open("input.txt","r") as file:
    while True:
        line:str = file.readline()
        if line == "":
            break
        head:str = None
        arg1:str = None
        arg2:str = None
        head = line[ 0 : line.index("(")]
        if head == "parent" or head == "married" or head == "divorced":
            arg1 = line[line.index("(") + 1 : line.index(",") ]
            arg2 = line[ line.index(",") + 1 : line.index(")") ]
        else:
            arg1 = line[line.index("(") + 1 : line.index(")")]
        temp = (head,arg1,arg2)
        KB.append(temp)

query = input("Nhap cau truy van: ")
head_of_query = query[ 0 : query.index("(") ]
X = query[ query.index("(") + 1 : query.index(",") ]
Y = query[ query.index(",") + 1 : query.index(")") ]
QueryClause.(head_of_query,X,Y)

Clause = []
if head_of_query == "husband":
    Clause.append(('Married',X,Y))
    Clause.append(('Male',X))
else if head_of_query == "wife":
    Clause.append(('Married',X,Y))
    Clause.append(('Female',X))
else if head_of_query == "father":
    Clause.append(('Parent',X,Y))
    Clause.append(('Male',X))
else if head_of_query == "mother":
    Clause.append(('Parent',X,Y))
    Clause.append(('Female',X))
else if head_of_query == "child":
    
else if head_of_query == "son":
else if head_of_query == "daughter":
else if head_of_query == "grandparent":
else if head_of_query == "grandmother":
else if head_of_query == "grandfather":
else if head_of_query == "grandchild":
else if head_of_query == "grandson":
else if head_of_query == "granddaughter":
else if head_of_query == "sibling":
else if head_of_query == "brother":
else if head_of_query == "sister":
else if head_of_query == "aunt":
else if head_of_query == "uncle":
else if head_of_query == "niece":
else if head_of_query == "nephew":
