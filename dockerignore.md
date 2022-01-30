pattern: <br>
`{ term }`<br>

term:<br>
`'*'` соответствует любой последовательности символов, не являющихся разделителями<br>
`'?'` соответствует одному любому символу, не являющемуся разделителем<br>
`'[' [ '^' ] { character-range } ']'`<br>
character class (не должен быть пустым)<br>
c соответствует символу c (c != '*', '?', '\\', '[')<br>
`'\\'` c соответствует символу c<br>

character-range:<br>
c соответствует символу c (c != '\\', '-', ']')<br>
`'\\'` c соответствует символу c<br>
`lo '-' hi` соответствует символу c для lo &lt;= c &lt;= hi<br>

additions:<br>
`'**'` соответствует любому количеству директорий (включая ноль)<br>
`'!'` строки, начинающиеся с ! (восклицательного знака) можно использовать для определения исключений из правил игнорирования<br>
`'#'` строки, начинающиеся с этого символа, игнорируются: используйте его для комментирования<br>