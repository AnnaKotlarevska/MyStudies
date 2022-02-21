```GitHub. HW\_2``` 
1. На локальном репозитории сделать ветки для: 
- Postman 
- Jmeter
- CheckLists
- Bug Reports 
- SQL
- Charles 
- Mobile testing 
=== ```git branch name branch ```
2. Запушить все ветки на внешний репозиторий === ```git push --all ```
Запушить 1 ветку === ```git push -u origin name branch``` 
3. В ветке Bug Reports сделать текстовый документ со структурой баг репорта === ```git checkout BugReports``` --\> ```vim Bug\_Report\_Structure``` --\> ```git add . ```--\> ```git commit -m "Bug Report" ```
4. Запушить структуру баг репорта на внешний репозиторий === ```git push ```
5. Вмержить ветку Bug Reports в Main === ```git checkout main ```--\> ```git merge BugReports ```
6. Запушить main на внешний репозиторий. === ```git push ```
7. В ветке CheckLists набросать структуру чек листа. === ```git checkout CheckLists ```--\> ```vim Check\_List\_Structure``` --\> ```git add . ```--\> ```git commit -m "Check List" ```
8. Запушить структуру на внешний репозиторий === ```git push ```
9. На внешнем репозитории сделать Pull Request ветки CheckLists в main === на странице репозитория перейти на вкладку Pull requests --\> нажать New pull request --\> выбрать ветки: base- куда вносим изменения, compare- из какой ветки --\> указать комментарий --\> нажать кнопку Create pull request --\> нажать Merge pull request --\> нажать Confirm merge 
10. Синхронизировать Внешнюю и Локальную ветки Main === ```git checkout main``` --\> ```git checkout main ```--\> ```git pull```
