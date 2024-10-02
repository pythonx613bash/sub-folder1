*2 Oct 2024


#include <stdio.h>

int main() {
  // This is a comment
  printf("Hello World!");
  return 0;
}











\t	Creates a horizontal tab
\\	Inserts a backslash character (\)
\"	Inserts a double quote character
\* *\	Inserts new line!




SnowList of Commands
Consider that my current directory contains the following files and directories each of which has some content.

CONTRIBUTING.md
my_script.sh
Payment.pdf
questions.txt
tests.yml
images (folder)
rotate3.gif
rotate4.gif
rotate5.gif
Note that the text in blue color denotes a directory, while others denote files. The text in green color denotes that the file is executable.


List directory contents
$ ls
CONTRIBUTING.md  images  my_script.sh  Payment.pdf  questions.txt  tests.yml

List files/directories in reverse order (-r option specifies reverse ordering)
$ ls -r  
tests.yml  questions.txt  Payment.pdf  my_script.sh  images  CONTRIBUTING.md

List files and directories recursively (option: -R)
$ ls -R  
.:
CONTRIBUTING.md  images  my_script.sh  Payment.pdf  questions.txt  tests.yml

./images:
rotate3.gif  rotate4.png  rotate5.gif

long listing format (option: -l)
$ ls -l
total 428
-rw-rw-r-- 1 firuza firuza   4688 Sep 30 21:35 CONTRIBUTING.md
drwxr-xr-x 2 firuza firuza   4096 Oct  6 21:15 images
-rwxrwxr-x 1 firuza firuza    847 Sep 30 21:23 my_script.sh
-rw------- 1 firuza firuza 410160 Oct  6 14:05 Payment.pdf
-rw-r--r-- 1 firuza firuza   2676 Oct  5 22:06 questions.txt
-rw-rw-r-- 1 firuza firuza   3575 Sep 30 21:35 tests.yml
 
List files with human redable sizes (K, M, G, etc.) (option: -h)
$ ls -lh 
total 428K
-rw-rw-r-- 1 firuza firuza 4.6K Sep 30 21:35 CONTRIBUTING.md
drwxr-xr-x 2 firuza firuza 4.0K Oct  6 21:15 images
-rwxrwxr-x 1 firuza firuza  847 Sep 30 21:23 my_script.sh
-rw------- 1 firuza firuza 401K Oct  6 14:05 Payment.pdf
-rw-r--r-- 1 firuza firuza 2.7K Oct  5 22:06 questions.txt
-rw-rw-r-- 1 firuza firuza 3.5K Sep 30 21:35 tests.yml

Sort by modification time, newest first (opiton: -t)
$ ls -lt
total 428
drwxr-xr-x 2 firuza firuza   4096 Oct  6 21:15 images
-rw------- 1 firuza firuza 410160 Oct  6 14:05 Payment.pdf
-rw-r--r-- 1 firuza firuza   2676 Oct  5 22:06 questions.txt
-rw-rw-r-- 1 firuza firuza   4688 Sep 30 21:35 CONTRIBUTING.md
-rw-rw-r-- 1 firuza firuza   3575 Sep 30 21:35 tests.yml
-rwxrwxr-x 1 firuza firuza    847 Sep 30 21:23 my_script.sh

Sort by modification time and reverse order (opiton: -tr) 
$ ls -ltr   (Sort by Last modified - last)
total 428
-rwxrwxr-x 1 firuza firuza    847 Sep 30 21:23 my_script.sh
-rw-rw-r-- 1 firuza firuza   3575 Sep 30 21:35 tests.yml
-rw-rw-r-- 1 firuza firuza   4688 Sep 30 21:35 CONTRIBUTING.md
-rw-r--r-- 1 firuza firuza   2676 Oct  5 22:06 questions.txt
-rw------- 1 firuza firuza 410160 Oct  6 14:05 Payment.pdf
drwxr-xr-x 2 firuza firuza   4096 Oct  6 21:15 images
 
Sort by file size, largest first (option: -S)
$ ls -lhS
total 428K
-rw------- 1 firuza firuza 401K Oct  6 14:05 Payment.pdf
-rw-rw-r-- 1 firuza firuza 4.6K Sep 30 21:35 CONTRIBUTING.md
drwxr-xr-x 2 firuza firuza 4.0K Oct  6 21:15 images
-rw-rw-r-- 1 firuza firuza 3.5K Sep 30 21:35 tests.yml
-rw-r--r-- 1 firuza firuza 2.7K Oct  5 22:06 questions.txt
-rwxrwxr-x 1 firuza firuza  847 Sep 30 21:23 my_script.sh

concatenate files and print on the standard output
$ cat questions.txt
Object Oriented Programming 
...

$ cat CONTRIBUTING.md
Want to contribute? Great to know! 

$ cat questions.txt CONTRIBUTING.md
Object Oriented Programming 
...
...
Want to contribute? Great to know! 
...

number all output lines
$ cat -n questions.txt
   1    Object Oriented Programming
   2    In this session ...
   3    ...

Create a new file (questionsNew.txt) from (questions.txt)
$ cat questions.txt > questionsNew.txt

Append content to a file (questionsNew.txt) from standard input
$ cat >> questionsNew.txt
line added from terminal
^C

Appending content to a file (questionsNew.txt) from another file (CONTRIBUTING.md)
$ cat CONTRIBUTING.md >> questionsNew.txt

print newline, word, and byte counts for each file
$ wc questions.txt
  54  485 2676 questions.txt
Here, 54 are the number of newlines, 485 are the number of words in the questions.txt file

print newline, word, and byte counts for each file
$ wc questions.txt
  54  485 2676 questions.txt

print newline counts
$ wc -l questions.txt
  54 questions.txt

print word counts
$ wc -w questions.txt
  485 questions.txt

print newline counts of multiple files
wc -l questions.txt tests.yml 
  54 questions.txt
 148 tests.yml
 202 total

check exit status
$ ls -P
ls: invalid option -- 'P'
Try 'ls --help' for more information.
$ echo $?
2

$ ca introduction.txt
ca: command not found
$ echo $?
127


There are several methods to password protect a folder on Debian, including:

1. EncFS: A popular and easy-to-use tool for encrypting and password-protecting folders. You can install EncFS using `sudo apt-get install encfs`. Then, create a new encrypted folder using the `encfs` command, specifying the folder path and password.
2. VeraCrypt: A free and open-source disk encryption software that can also be used to password-protect folders. You can install VeraCrypt using `sudo apt-get install veracrypt`. Create a new encrypted container (folder) and set a password.
3. 7zip: A command-line tool that can be used to create password-protected archives (folders) without compressing the files. You can install 7zip using `sudo apt-get install p7zip-full`. Use the `7za` command to create a password-protected archive.
4. KDE Vaults (optional): If you're using the KDE Plasma desktop environment, you can use the Vaults feature to easily encrypt folders. Otherwise, VeraCrypt or EncFS are good alternatives.

Steps for EncFS and VeraCrypt:

1. Install the chosen tool (EncFS or VeraCrypt).
2. Create a new folder to be encrypted.
3. Run the tool's command-line interface or GUI (if available) and specify the folder path and password.
4. Set the password and confirm it.
5. The folder will be encrypted and password-protected.

Additional Tips:

 Use a strong and unique password for each encrypted folder.
 Keep your encryption keys and passwords secure to prevent unauthorized access.
 Regularly back up your encrypted data to ensure data integrity and availability.
 Consider using a combination of encryption and access control (e.g., file permissions) for added security.

Remember to consult the documentation for your chosen tool for more detailed instructions and configuration options.
