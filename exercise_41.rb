a : /\b(b)[^A-Z\s]*e\b/
b : /^.*\?$/
c : /^.+\?$/
d : /^(http:\/\/|https:\/\/)\S*(\n|\s*\n)/
e : /\b([a-z]*i[a-z]*){3,}\b/
f : /\S*$/
g : /^,(\d+,){3,6}$/
h : /^\d+(,\d+){2,5}$/
i : /^\d+((,\d+){5,}|(,\d+){2})$/
j : /(?<tag>[<])h1>(?'title'.+?)\k<tag>/