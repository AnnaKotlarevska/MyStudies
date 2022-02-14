Linux terminal (GitBash) commands

\1) Посмотреть где я === pwd
\2) Создать папку === mkdir terminal1
\3) Зайти в папку === cd terminal1
\4) Создать 3 папки === mkdir f\_1 f\_2 f\_3
\5) Зайти в любую папку === cd f\_1
\6) Создать 5 файлов (3 txt, 2 json) === touch file1.txt file2.txt file3.txt j\_file1.json j\_file2.json или cat > file\_name
\7) Создать 3 папки === mkdir folder1 folder2 folder3
\8) Вывести список содержимого папки === ls -ls 	или ls -l  или ls
\9) + Открыть любой txt файл === vim file1.txt (или nano file1.txt)
\10) + написать туда что-нибудь, любой текст === i write text
\11) + сохранить и выйти. === Esc :wq
\12) Выйти из папки на уровень выше === cd ..

—

\13) переместить любые 2 файла, которые вы создали, в любую другую папку. ===
mv f\_1/file1.txt f\_1/j\_file1.json f\_2

\14) скопировать любые 2 файла, которые вы создали, в любую другую папку. ===
cp f\_2/file1.txt f\_2/j\_file1.json f\_3

\15) Найти файл по имени === find file1.txt - поиск определенного файла в директории;
find f\_2 -name "\*file\*" для поиска в определенной директории файлов которые содержат частичку file ;
find / -name "\*file\*" для поиска по всей системе файлов которые содержат частичку file

\16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает. ===
tail -F file name
tail -F file name | drep qwer === для отслеживания в реальном времени и фильтрации только строки содержащие частичку прописанную после grep

\17) вывести несколько первых строк из текстового файла === head -3 file1.txt (выводятся 3 первые строки файла)
\18) вывести несколько последних строк из текстового файла === tail -2 file1.txt (выводятся 2 последние строки файла)
\19) просмотреть содержимое длинного файла (команда less) изучите как она работает. === less file2.txt
\20) вывести дату и время === date

\=========

Задание \*

1) Отправить http запрос на сервер. http://162.55.220.72:5005/terminal-hw-request

curl http://162.55.220.72:5005/terminal-hw-request

curl "http://162.55.220.72:5005/get\_method?name="Anna"&age=28"

Result ["Anna","28"]

1) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13

nano myscript.sh == запускает редактор для написания скрипта

#!/bin/bash

cd script1
mkdir papka1 papka2 papka3
cd papka1
touch name1.txt name2.txt name3.txt j\_name1.json j\_name2.json
mkdir papka4 papka5 papka6
ls -la
mv name1.txt j\_name1.json ../papka2

echo "Done"

sudo chmod a+x myscript.sh == дает привилегию чтоб все могли запускать
./myscript.sh == запускает скрипт
bash mycript.sh == запускает скрипт если привилегии нет

test string
