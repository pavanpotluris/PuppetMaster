class tt {
  $content = "Here is the first files"
  notify {"$content":}
  notify {"$is_virtual":}
  
  if str2bool("$is_virtual") {
    notify {"Yes its Virtual Server":}
  }
}
