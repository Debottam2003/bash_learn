# 🐧 Linux Commands Guide

> **Note:** There isn't a single finite list of commands that works identically on every Linux distribution. Different distros and installed packages provide different utilities. Below is a practical, distro-agnostic core, focusing on commands you can expect on most Linux systems through common POSIX/GNU tooling.

---

## Table of Contents

1. [Getting Help](#1-getting-help)
2. [Navigation](#2-navigation)
3. [Creating Files and Directories](#3-creating-files-and-directories)
4. [Copying Files](#4-copying-files)
5. [Moving and Renaming](#5-moving-and-renaming)
6. [Deleting](#6-deleting)
7. [Viewing Files](#7-viewing-files)
8. [Finding Files](#8-finding-files)
9. [Searching Inside Files](#9-searching-inside-files)
10. [Text Processing](#10-text-processing)
11. [File Information](#11-file-information)
12. [Permissions](#12-permissions)
13. [Users and Groups](#13-users-and-groups)
14. [Processes](#14-processes)
15. [System Information](#15-system-information)
16. [Environment](#16-environment)
17. [File Links](#17-file-links)
18. [Archives and Compression](#18-archives-and-compression)
19. [Input/Output](#19-inputoutput)
20. [Redirection](#20-redirection)
21. [Pipes](#21-pipes)
22. [Terminal Commands](#22-terminal-commands)
23. [Command Location](#23-command-location)
24. [Disk and Filesystem Commands](#24-disk-and-filesystem-commands)
25. [Networking Basics](#25-networking-basics)
26. [DNS](#26-dns)
27. [Remote Access](#27-remote-access)
28. [Terminal Session Commands](#28-terminal-session-commands)
29. [Time and Execution](#29-time-and-execution)
30. [Text Editors](#30-text-editors)
31. [POSIX-Oriented Core Commands](#31-posix-oriented-core-commands-worth-mastering)
32. [A Good Learning Order](#a-good-learning-order)

---

## 1. Getting Help

### `man` — manual pages
```bash
man ls
man cp
man chmod
```
Search within manuals:
```bash
man -k network
```

### `info` — detailed documentation
```bash
info coreutils
```

### `--help`
Most commands support:
```bash
ls --help
cp --help
mv --help
```

### `whatis` — short description
```bash
whatis ls
whatis chmod
```

---

## 2. Navigation

### `pwd` — print current directory
```bash
pwd
```
Example output:
```
/home/alex
```

### `ls` — list files

| Command    | Meaning                              |
|------------|---------------------------------------|
| `ls`       | List files                            |
| `ls -l`    | Detailed listing                      |
| `ls -a`    | Include hidden files                  |
| `ls -h`    | Human-readable sizes                  |
| `ls -lah`  | Detailed + hidden + readable sizes    |

### `cd` — change directory
```bash
cd /etc
cd /home
cd ..     # parent directory
cd .      # current directory
cd ~      # home directory
cd -      # previous directory
```

---

## 3. Creating Files and Directories

### `mkdir` — create directory
```bash
mkdir projects
mkdir documents
```
Create nested directories:
```bash
mkdir -p projects/linux/notes
```

### `touch` — create an empty file / update timestamp
```bash
touch file.txt
touch notes.txt
```
Multiple files:
```bash
touch a.txt b.txt c.txt
```

---

## 4. Copying Files

### `cp` — copy
```bash
cp file.txt backup.txt
```
Copy to a directory:
```bash
cp file.txt /tmp/
```
Copy a directory:
```bash
cp -r project backup
```
Preserve attributes:
```bash
cp -p file.txt backup.txt
```
Common combination:
```bash
cp -rp project backup
```

---

## 5. Moving and Renaming

### `mv` — move or rename
Rename:
```bash
mv old.txt new.txt
```
Move:
```bash
mv file.txt /tmp/
```
Move multiple files:
```bash
mv a.txt b.txt /tmp/
```

---

## 6. Deleting

### `rm` — remove files
```bash
rm file.txt
```
Remove multiple files:
```bash
rm a.txt b.txt
```
Remove a directory and its contents:
```bash
rm -r project
```
Force removal:
```bash
rm -f file.txt
```
Recursive + force:
```bash
rm -rf project
```
> ⚠️ **Be extremely careful with `rm -rf`.** There is normally no recycle bin involved.

### `rmdir` — remove empty directory
```bash
rmdir empty_directory
```
Unlike `rm -r`, it won't remove a directory containing files.

---

## 7. Viewing Files

### `cat` — display file
```bash
cat file.txt
```
Multiple files:
```bash
cat file1.txt file2.txt
```

### `less` — view large files
```bash
less /var/log/system.log
```
Useful keys inside `less`:

| Key     | Action        |
|---------|---------------|
| Space   | Next page     |
| `b`     | Previous page |
| `/word` | Search        |
| `n`     | Next match    |
| `q`     | Quit          |

### `more`
```bash
more file.txt
```

### `head` — beginning of file
```bash
head file.txt
```
First 20 lines:
```bash
head -n 20 file.txt
```

### `tail` — end of file
```bash
tail file.txt
```
Last 20 lines:
```bash
tail -n 20 file.txt
```
Follow a changing file:
```bash
tail -f logfile.txt
```

---

## 8. Finding Files

### `find`
Find a file by name:
```bash
find . -name "notes.txt"
```
Find all `.txt` files:
```bash
find . -name "*.txt"
```
Find directories:
```bash
find . -type d
```
Find regular files:
```bash
find . -type f
```
Find files larger than 100 MB:
```bash
find . -type f -size +100M
```
Find files modified recently:
```bash
find . -type f -mtime -1
```

---

## 9. Searching Inside Files

### `grep`
Search for text:
```bash
grep "error" logfile.txt
```
Case-insensitive:
```bash
grep -i "error" logfile.txt
```
Show line numbers:
```bash
grep -n "error" logfile.txt
```
Search recursively:
```bash
grep -r "error" .
```
Invert the match:
```bash
grep -v "error" logfile.txt
```
Count matches:
```bash
grep -c "error" logfile.txt
```

---

## 10. Text Processing

These are extremely important Linux commands.

### `sort`
```bash
sort names.txt
```
Reverse:
```bash
sort -r names.txt
```
Numeric sorting:
```bash
sort -n numbers.txt
```

### `uniq`
```bash
uniq names.txt
```
Count consecutive duplicates:
```bash
uniq -c names.txt
```
Often used after sorting:
```bash
sort names.txt | uniq
```

### `wc` — count
Lines:
```bash
wc -l file.txt
```
Words:
```bash
wc -w file.txt
```
Characters:
```bash
wc -m file.txt
```
Everything:
```bash
wc file.txt
```

### `cut` — extract portions
First field separated by `:`:
```bash
cut -d ':' -f 1 /etc/passwd
```
First 10 characters:
```bash
cut -c 1-10 file.txt
```

### `tr` — translate/delete characters
Convert lowercase to uppercase:
```bash
tr 'a-z' 'A-Z' < file.txt
```
Remove a character:
```bash
tr -d ':' < file.txt
```

### `diff` — compare files
```bash
diff file1.txt file2.txt
```

### `cmp` — compare byte-by-byte
```bash
cmp file1.txt file2.txt
```

---

## 11. File Information

### `file` — determine file type
```bash
file document.pdf
file image.jpg
file program
```

### `stat` — detailed metadata
```bash
stat file.txt
```

### `du` — disk usage
Directory size:
```bash
du directory
```
Human-readable:
```bash
du -h directory
```
Summary:
```bash
du -sh directory
```

### `df` — filesystem disk space
```bash
df
df -h
```

---

## 12. Permissions

### `chmod` — change permissions
```bash
chmod 644 file.txt
chmod 755 program
```
Symbolic form:
```bash
chmod u+x program
chmod u-w file.txt
chmod g+r file.txt
chmod o-r file.txt
```

### `chown` — change owner
```bash
chown user file.txt
```
Owner and group:
```bash
chown user:group file.txt
```

### `chgrp` — change group
```bash
chgrp developers file.txt
```

### `umask`
View default permission mask:
```bash
umask
```

---

## 13. Users and Groups

```bash
whoami     # current user
id         # user/group IDs
who        # logged-in users
w          # logged-in users and activity
groups     # group memberships
users      # logged-in usernames
last       # login history
```

---

## 14. Processes

### `ps`
```bash
ps          # your processes
ps -ef      # detailed
```

### `top` — interactive process viewer
```bash
top
```

### `kill`
```bash
kill 1234       # terminate a process
kill -9 1234    # force termination
```

### `pgrep` / `pkill`
```bash
pgrep firefox   # find processes by name
pkill firefox   # terminate processes by name
```

### `nice` / `renice`
```bash
nice -n 10 command       # start with a priority
renice 10 -p 1234        # change priority of running process
```

---

## 15. System Information

```bash
uname       # system info
uname -a    # all system info
hostname    # machine hostname
uptime      # system uptime
date        # current date/time
cal         # calendar
free        # memory info
free -h     # human-readable
getconf PAGE_SIZE   # system configuration values
```

---

## 16. Environment

```bash
env             # display environment
printenv        # display environment
printenv HOME   # specific variable
locale          # locale settings
```

---

## 17. File Links

### `ln` — hard link
```bash
ln original.txt hardlink.txt
```
Symbolic link:
```bash
ln -s original.txt shortcut.txt
```
View links:
```bash
ls -l
```

---

## 18. Archives and Compression

### `tar`
Create archive:
```bash
tar -cf archive.tar files/
```
Extract:
```bash
tar -xf archive.tar
```
List contents:
```bash
tar -tf archive.tar
```
Create gzip-compressed archive:
```bash
tar -czf archive.tar.gz files/
```
Extract:
```bash
tar -xzf archive.tar.gz
```

### `gzip` / `gunzip`
```bash
gzip file.txt        # compress
gzip -d file.txt.gz  # decompress
gunzip file.txt.gz   # decompress
```

### `bzip2`
```bash
bzip2 file.txt
bzip2 -d file.txt.bz2
```

### `xz`
```bash
xz file.txt
xz -d file.txt.xz
```

---

## 19. Input/Output

```bash
echo "Hello Linux"
printf "Hello Linux\n"
```

### `tee` — display and save output
```bash
tee output.txt      # write
tee -a output.txt   # append
```

### `yes` — repeatedly output text
```bash
yes
```
Usually stopped with `Ctrl+C`.

---

## 20. Redirection

> These are shell operators rather than commands, but they're fundamental for using Linux commands.

```bash
ls > files.txt              # output to a file
ls >> files.txt             # append
sort < names.txt            # input from a file
command 2> error.txt        # standard error
command > output.txt 2> error.txt   # both output and error
```

---

## 21. Pipes

Again, `|` is an operator, not a command. It sends one command's output to another command.

```bash
ls | less
ps -ef | grep firefox
cat names.txt | sort
```
A more direct version of the last example:
```bash
sort names.txt
```

---

## 22. Terminal Commands

```bash
clear     # clear the screen
reset     # reset a corrupted terminal display
tty       # show the current terminal
stty      # display terminal settings
sleep 5   # pause for 5 seconds
```

---

## 23. Command Location

```bash
which ls
which python

type ls
type cd

command -v ls
```
> `command -v` is generally more useful than relying on `which`.

---

## 24. Disk and Filesystem Commands

```bash
mount       # show mounted filesystems
findmnt     # show mounted filesystems
lsblk       # show block devices
blkid       # show filesystem/device identifiers
```
These are common Linux utilities, although their availability can vary more than the basic POSIX commands.

---

## 25. Networking Basics

### `ping`
```bash
ping example.com
ping -c 4 example.com   # limit packets
```

### `hostname`
```bash
hostname
```

### `ip` — modern Linux networking utility
```bash
ip addr     # show addresses
ip route    # show routes
ip link     # show interfaces
```

### `ss` — show sockets
```bash
ss
ss -tuln    # listening TCP/UDP sockets
```

### `curl`
```bash
curl https://example.com
curl -O https://example.com/file.txt   # download
```

### `wget`
```bash
wget https://example.com/file.txt
```
> `curl` is more universally encountered on modern systems; `wget` is also very common but isn't part of the POSIX core.

---

## 26. DNS

```bash
getent hosts example.com
host example.com
nslookup example.com
```
> The last two are common but may require additional packages depending on the distribution.

---

## 27. Remote Access

### `ssh`
```bash
ssh user@server
ssh -p 2222 user@server   # specify a port
```

### `scp` — copy files over SSH
```bash
scp file.txt user@server:/tmp/
scp user@server:/tmp/file.txt .   # copy from remote
```

### `sftp` — interactive file transfer
```bash
sftp user@server
```
> These require an SSH implementation to be installed.

---

## 28. Terminal Session Commands

### `history`
```bash
history
```

### `alias`
Show aliases:
```bash
alias
```
Create one for the current shell session:
```bash
alias ll='ls -l'
```
> Note: `alias` itself is normally a shell builtin, so this is not a standalone Linux executable.

---

## 29. Time and Execution

### `time` — measure command execution time
```bash
time ls
```

### `timeout` — stop a command after a period
```bash
timeout 10 command
```

---

## 30. Text Editors

Common terminal editors include:
```bash
vi file.txt
vim file.txt
nano file.txt
```
> These are not guaranteed on every Linux installation, so don't treat them as distro-agnostic core commands.

---

## 31. POSIX-Oriented Core Commands Worth Mastering

If your goal is maximum portability across Linux distributions, prioritize these:

```
cat      cd       chmod    chown    cp
cut      date     dd       df       dirname
echo     env      find     grep     head
id       kill     ln       ls       mkdir
mv       nice     printf   pwd      rm
rmdir    sed      sleep    sort     tail
tar      tee      test     touch    tr
uname    uniq     wc       xargs
```

A particularly important distinction: **Linux command ≠ shell scripting.**

For example, these are commands/utilities:
```
find  grep  ls  cp  mv  rm  chmod  chown  ps  kill  df  du  tar
```

Whereas these are shell-language features (intentionally not covered here):
```
if  for  while  case  function  $variable  $?  $@
```

---

## A Good Learning Order

If you're learning Linux commands from scratch, learn them in this order:

1. **Navigation** — `pwd` → `ls` → `cd`
2. **Files** — `touch` → `mkdir` → `cp` → `mv` → `rm`
3. **Reading** — `cat` → `less` → `head` → `tail`
4. **Searching** — `find` → `grep`
5. **Text processing** — `sort` → `uniq` → `wc` → `cut` → `tr` → `diff`
6. **Permissions** — `chmod` → `chown` → `chgrp`
7. **Processes** — `ps` → `top` → `kill` → `pgrep`
8. **Storage** — `df` → `du` → `lsblk` → `mount`
9. **Networking** — `ip` → `ss` → `ping` → `curl`
10. **Archives** — `tar` → `gzip` → `bzip2` → `xz`

That gives you a strong Linux command-line foundation without moving into shell scripting.
