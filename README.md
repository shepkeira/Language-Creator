# Language-Creator

## Version 1

Translate from English into a made up language. (All translations are 1 to 1 right now)
Words kept in a dictionary

### Actions
* Can add or edit words from the dictionary
* Can enter a phrase and have it translated from English into made up language
* Will have choices for the initial language creation
  * Sounds found in language (must have some consonants and some vowels)
  * Homophones 0.2% average

## Ideas for further Versions
* Have language detections for formal nouns (person names, and names of places)
* Have language detection for word forms (plural, adjectives, nouns etc.) to make it less 1 to 1 translation
* Create written form for languages
* Add Diacritic
* Add tonal languages
* Add translation from other languages
* Add translation from made up language to other languages
* Add translation between made up languages

## Database design
Language
| Id      | Language_Name| Homophone_Percent |
| :---    |    :----     |  :---             |
| 1       | English      | 0.2               |

ruby bin/rails generate model Language language_name:string homophone_percent:decimal

Sounds
| Id    |   Sound     | Type       | 
| :---  |    :----    | :--        |
| 1     | ʌ           |  vowel     |
| 2     | d           | consontant |

ruby bin/rails generate model Sound sound:string sound_type:string

LanguageSounds
| Id    | Language_Id | Sound_Id |
| :--   | :---        | :---     |
| 1     | 1           | 1        |
| 1     | 1           | 2        |

ruby bin/rails generate model LanguageSound language_id:integer sound_id:integer

Dictionary of Phonemes
| Id   | English_Word | New_Language_Word | Language_Id |
| :--- |    :----     |          :---     | :---        |
| 1    | Hello        | hɛləʊ             | 1           |

ruby bin/rails generate model Phoneme english_word:string language_word:string language_id:integer

## Development Plan
- [x] Create App
- [x] Create Database
- [ ] Allow for editing and adding to database
  - [x] Adding to Language Database
  - [x] Editing Language Database
  - [x] Adding to Sound Database
  - [x] Editing to Sound Database
  - [x] Adding to Language Sounds Database
  - [x] Ediitng Language Sounds Database
  - [x] Deleting Languages
  - [x] Adding to Phonemes Database
  - [x] Editing to Phonemes Database
  - [x] Deleting Phonemes
  - [x] Add testing
    - [x] Controllers
    - [x] Models
- [ ] Create word generation
- [ ] Single word translations/generation
- [ ] Multi word translantion/generation

## To Run Test
``` rails test ```


## To Run Locally
``` rake db:seed ```
``` rails server ```
Then go to ```http://localhost:3000/```

### Accidentaly closed without terminatting the server?
Replace 15356 with the value in tmp/pids/server.pid
``` taskkill /f /pid 15356 ```