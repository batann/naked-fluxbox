#!/bin/bash
DIR_BASE="/home/batan/naked-fluxbox"
DIR_DIR="fluxbox moc task urxvt vim w3m"
FILES="bashrc.mx profile bashrc.navigation vimrc music.kdl Xdefaults xboardrc rainbow_oauth Xauthority bashrc.finish BASHRC.FIRST.LC bashrc.aliases taskrc lc-cd bashrc tkremind bashrc.batan rss.opml megarc Xresources tmux.conf xsessionrc"
for i in ${DIR_BASE[@]};
do
if [[ -d /home/batan/.$i ]];
then
mv /home/batan/.$ /home/batan/.$i.$(date +%j)
mv ${DIR_BASE}/${i} /home/batan/.${i}
done

for i in ${FILES[@]};
do 
if [[ -f /home/batan/.$i ]];
then
mv /home/batan/.$i /home/batan/.${i}.$(date +%j)
mv ${DIR_BASE}/${i} /home/batan/.${i}
done

