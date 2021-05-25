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
Languages
| Id      | Language_Name| Homonyme_Percent | Sounds_Id |
| :---    |    :----     |  :---            |   :---    |
| 1       | English      | 0.2              | 1         |

Sounds
| Id    | Language_id | Vowel_Sounds | Consonant_Sounds       |
| :---  |    :----    |        :---  | :---                   |
| 1     | 1           | ʌɑæeəɜɪiɒɔʊu | bdfghjklmnŋprsʃtθðvwzʒ |

Dictionary of Phonemes
| Id   | English_Word | New_Language_Word |
| :--- |    :----     |          :---     |
| 1    | Hello        | hɛləʊ             |

## Development Plan
- [x] Create App
- [ ] Create Database
- [ ] Allow for editing and adding to database
- [ ] Create word generation
- [ ] Single word translations/generation
- [ ] Multi word translantion/generation
