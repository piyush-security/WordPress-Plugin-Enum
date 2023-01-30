from bs4 import BeautifulSoup
import urllib.request as hyperlink
import os

link = hyperlink.urlopen('http://plugins.svn.wordpress.org/')
wordPressSoup = BeautifulSoup(link,'lxml')
filePath = os.path.dirname(os.path.realpath(__file__))
fileNaming = (filePath + ('Plugin-names.txt'))
print('\n[+] File Updated Successfully :- ' + filePath + '/Plugin-names.txt')
with open('Plugin-names.txt', 'wt', encoding='utf8') as file:
        file.write(wordPressSoup.text)
