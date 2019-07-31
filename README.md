# picture
---

`upload.sh` is a shell script that can upload files from your computer to github and return urls of raw files which is convenient
for markdown writing when inserting pictures.

## Usage
You only need to change the below url to your own.
```
url=https://raw.githubusercontent.com/hkunzhe/picture/master/
```
`upload.sh` accepts one optional argument for `git commit -m`. If you don't specify, the default commit
message will be `"upload file1 file2 file3 ..."`.
