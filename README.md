# parse_text

A Flutter package that simply allows you to detect multiple types i.e. email, mobile, urls, etc.
It is highly Customizable in terms of size, color, style, etc for each detected type of text and Simple to use.


## Import

``` yaml
dependencies:
  parse_text: 0.0.2
```

### Text Format for Detection

URL    : Automatically detects when an URL is included in the text and navigate you to Browser

Email  : Automatically detects when an email is included in the text and navigate you to Email

Mobile : Automatically detects when a mobile number is included in the text

Bold   : enclose your text in '*' e.g:  \*Bold Text\* ,  result => *Bold*

Italic : enclose your text in '_' e.g:  \_Bold Text\_  , result => _Italic_

Cross  : enclose your text in '~' e.g:  \~Bold Text\~  , result => ~Crossed~


### Simple use

You can use `ParseText` as Text Widget

```dart
ParseText(
  size: 16,
  text: "Add your Sample Text here"
)
```

### Beautify Detected Texts

You can use multiple text beautification options with detected text formats.

```dart
ParseText(
  size: 16,
  text: "Add your Sample Text here"
  emailColor: Colors.red,
  emailSize: 18,
  urlStyle: FontStyle.italic,
  italicFW: FontWeight.w700,
)
```

<img src="https://raw.githubusercontent.com/dubey2k/parse_text/master/screenshots/parse_text_default.jpg" width="30%" height="30%"/> <img src="https://raw.githubusercontent.com/dubey2k/parse_text/master/screenshots/parse_text_colors.jpg" width="30%" height="30%"/> 



### Parameters for undetected text

|   parameter   |      description                                                                           |  default                          |
| ------------- | ------------------------------------------------------------------------------------------ | --------------------------------- |
|   size        |     The Size of Text which is supposed to parse and Displayed as Text Widget               |  required                         |
|   text        |     The Text which is supposed to parse                                                    |  required                         |
|   color       |     The Color of UnDetected Text                                                           |  Color(0xFF424242)                |
|   wt          |     The FontWeight of UnDetected Text                                                      |  FontWeight.normal                |
|   align       |     The Alignment of UnDetected Text                                                       |  TextAlign.start                  |
|   maxLine     |     maxLines of UnDetected Text                                                            |  infinite                         |
|   style       |     FontStyle of UnDetected Text                                                           |  FontStyle.normal                 |

### Parameters for detected email text

|   parameter   |        description                                                                         |  default                          |
| ------------- | ------------------------------------------------------------------------------------------ | --------------------------------- |
|   emailColor  |       The Color of text detected as Email                                                  |  Color.blue                       |
|   emailFW     |       The FontWeight of text detected as Email                                             |  FontWeight.w600                  |
|   emailSize   |       The Size of text detected as Email                                                   |  size (same as UnDetected Text)   |
|   emailStyle  |       The FontStyle of text detected as Email                                              |  FontStyle.normal                 |
                     
### Parameters for detected mobile text             
             
|   parameter   |       description                                                                           | default                          |
| ------------- | ------------------------------------------------------------------------------------------- | -------------------------------- |
|   mobColor    |       The Color of text detected as mobile                                                  | Color.blue                       |
|   mobFW       |       The FontWeight of text detected as mobile                                             | FontWeight.w600                  |
|   mobSize     |       The Size of text detected as mobile                                                   | size (same as UnDetected Text)   |
|   mobStyle    |       The FontStyle of text detected as mobile                                              | FontStyle.normal                 |
             
### Parameters for detected url text             
             
|   parameter   |       description                                                                           | default                          |
| ------------- | ------------------------------------------------------------------------------------------- | -------------------------------- |
|   urlColor    |       The Color of text detected as URL                                                     | Color.blue                       |
|   urlFW       |       The FontWeight of text detected as URL                                                | FontWeight.w600                  |
|   urlSize     |       The Size of text detected as URL                                                      | size (same as UnDetected Text)   |
|   urlStyle    |       The FontStyle of text detected as URL                                                 | FontStyle.normal                 |
             
### Parameters for detected bold text             
             
|   parameter   |       description                                                                           | default                          |
| ------------- | ------------------------------------------------------------------------------------------- | -------------------------------  |
|   boldColor   |       The Color of text detected as Bold                                                    | Color(0xFF424242)                |
|   boldFW      |       The FontWeight of text detected as Bold                                               | FontWeight.bold                  |
|   boldSize    |       The Size of text detected as Bold                                                     | size (same as UnDetected Text)   |
|   boldStyle   |       The FontStyle of text detected as Bold                                                | FontStyle.normal                 |
               
### Parameters for detected italic text             
               
|   parameter    |      description                                                                           | default                          |
| -------------- | ------------------------------------------------------------------------------------------ | -------------------------------  |
|   italicColor  |      The Color of text detected as Italic                                                  | Color(0xFF424242)                |
|   italicFW     |      The FontWeight of text detected as Itali                                              | FontWeight.normal                |
|   italicSize   |      The Size of text detected as Italic                                                   | size (same as UnDetected Text)   |
                
### Parameters for detected email text             
               
|   parameter   |       description                                                                           | default                          |
| ------------- | ------------------------------------------------------------------------------------------- | -------------------------------  |
|   crossColor  |       The Color of text detected as Cross                                                   | Color(0xFF424242)                |
|   crossFW     |       The FontWeight of text detected as Cross                                              | FontWeight.w600                  |
|   crossSize   |       The Size of text detected as Cross                                                    | size (same as UnDetected Text)   |
|   crossStyle  |       The FontStyle of text detected as Cross                                               | FontStyle.normal                 |
             