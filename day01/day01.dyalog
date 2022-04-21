path ← 'measures.txt'
input ← ⊃⎕NGET path 1 ⍝ get data in an array
data ← ⍎¨input ⍝ execute expression (turns '42' into 42)
⍝ data ← ((⍴input),1) ⍴ input ⍝ put data in column 
calc ← {+/ (1↓⍵)>(¯1↓⍵)}

sumsSequence ← {(↑(+/ (¯2↓⍵) (¯1↓1↓⍵) (2↓⍵)))}
calc sumsSequence data
