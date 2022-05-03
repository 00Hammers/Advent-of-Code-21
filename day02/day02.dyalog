path ← 'commands.txt'
input ← ⊃⎕nget path 1

⍝ one liner
res ← (+/ ((⊃¨input)='f')×(⍎¨(⊃⌽)¨input)) × (+/ ((((⊃¨input)='d')×(⍎¨(⊃⌽)¨input)) - (((⊃¨input)='u')×(⍎¨(⊃⌽)¨input))))

⍝ proper code
last ← {⊃⌽⍵}

cmds ← ⊃¨input
vals ← ⍎¨last¨input

mask_f ← cmds='f'
mask_u ← cmds='u'
mask_d ← cmds='d'

x ← +/ mask_f×vals
y ← +/ ((mask_d×vals)-(mask_u×vals))

res ← x×y
