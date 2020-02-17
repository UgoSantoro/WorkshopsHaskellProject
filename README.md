# Installation

## ghci

Fedora :
```bash
sudo dnf install ghc
```
Ubuntu :
```bash
sudo apt-get install ghc ghc-prof ghc-doc
```

## stack
For every Un*x operating system :
```bash
curl -sSL https://get.haskellstack.org/ | sh
```

To compile the project, you have to use the basic Makefile command
```bash
make
```

# Project : Part 1

You are free to write in every files in the src folder.

The Main.hs file in the app folder should not be touched

The goal of this project is to create a command interpreter which will evaluate the passed commands.

The command interpreter will receive two strings, the first one is a list of random characters.

The second string is another random character string.

Your algorithm has to check if the second string can be found in the first one, then print a boolean

Example :
```
> 1234 123
True
> a3r5f 23
False
> repzacdevtrofhcd145xid3(SQrpi) SQ
True
> true false
False
```

Your command interpreter should handle basics command errors, such as not enough strings

Example :
```
> 1234
Not Enough Arguments
>
```

# Project : Part 2

Let's do a more complex project, let's add some execution argument!

You have to implement two flags :

'-o' : This will execute the command interpreter of the part 1

'-s' : This will execute the second interpter (explained below)

The principle of the second interpreter is a bit the same as the previous : Take two string as arguments, return a Boolean.

But now, the first string is a random character string, and the second string is a word, where you have to check if all the needed letters to create this word are in the first string

Example :
```
./HaskellProject -o
> 1234 123
True
> a3r5f 23
False
> true etru
False
```
```
./HaskellProject -s
> 1234 123
True
> a3r5f 23
False
> true etru
True
```

# Project : Part 3

For those who are really fast, let's do other flags!

You have to implement two more flags :

'-f [filename]' : This will read the file content and evaluate each strings in it and stop the programm

'-a [arg1] [arg2]' : This will evaluate the two given arguments, then stop the programm

The goal of those two flags is to mix them with the previous one : If you have the -o and -f, you'll have to evaluate the file content with the part 1 algorithm.

Example :
```
cat filecommand
1234 123
a3r5f 23
true false
```
```
./HaskellProject -o -f filecommand
1234 123 : True
a3r5f 23 : False
true etru : False
```
```
./HaskellProject -s -a true etru
True
```

Those flags are not mandatory, if none of them are in the programm arguments, your programm should behave like the part 2
