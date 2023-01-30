# WordPress-Plugin-Enum
This is a simple Bash script which helps to enumerate Wordpress plugins, Without WP-scan.
I use this when I don't have to make much noise.

- - -

## Installation : 

```sh
git clone https://github.com/piyush-security/WordPress-Plugin-Enum.git
cd WordPress-Plugin-Enum/ ; chmod 755 Enumerator.sh ; chmod 755 Fresh-Wordlist-Gen.py 
```

```python
pip install -r requirements.txt
```

- - -

## Usage : 

Now Before using the bash script I suggest you to update our Wordlist (`Plugin-names.txt`).
To do this : 

```python
rm Plugin-names.txt
python3 Fresh-Wordlist-Gen.py
```

![Imgur](https://i.imgur.com/Fr6ICkw.png)

Now Its Time To use The `Enumerator.sh` ..

```sh
./Enumerator.sh
cat output.txt 
```

- - -







