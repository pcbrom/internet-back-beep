# linux user (install before): sudo apt-get install beep
# windows user: I have no idea

i = 1
while(TRUE) {
  cat('Attempt:', i, '\n')
  res <- try(download.file('www.google.com', 'beep_test.html'))
  if (!grepl('Error', res)) {
    system('beep')
    file.remove('beep_test.html')
    break
  } else {
    cat('Retry in 300s\n')
    i = i + 1
    Sys.sleep(300)
  }
}
