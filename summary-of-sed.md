


# What is sed
sed is called stream editor, it can be very useful in automating the editing task. The idea of sed is originated from the ed editor supported by the unix system.  The ed editor is the line-oriented editor, it can position a specific line by address, and then it can delete a line, substitute a line by pattern and replacement definement, or print a line. 

Actually, the functions provided by sed is almost the same as ed. The only difference is that sed is very powerful in automated editing. And sed appys the sed scripts or instructions to all the lines. 

# One sentence to describe sed

Line-oriented editor used to manipulate each line automatically. 


# Key Concepts and functions 

## Pattern space
Patten space is a concept in sed, it is nothing more than a buffer. As sed is a line-oriented editor, sed reads one line into the pattern space, and then edit the line in the pattern sapce, and finally output the edited line. 

## Address

The address function is the optional function provided by the sed. 

As the sed is line oriented editor, the address can help us to postion the line we need to edit, and then apply the editing script to that line.

The address is nothing more than a regular expression, so we can use regular expression to define a address. 

## Substitution 
Substitution is the score function supported. 

This is the basic syntax
```
s/pattern/replacement/
```
- s, a  substitution command
- pattern, defined by regular expression
- replacement, used to replace the content matched by the pattern. 
  
One example 
```
echo "hello world" > helloworld.txt
sed -e 's/world/ben/' helloworld.txt
```
The command is going to replace the world in each line to ben. 

- helloworld.txt, a text with 'hello world'
- -e, the following is the sed instruction
  
## Append, delete , insert and change
The sed also provides other commands to edit the text. 