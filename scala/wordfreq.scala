object Wordfreq {
  def main(args: Array[String]): Unit = {
    val text = scala.io.Source.stdin.mkString.toLowerCase
    val counts = "[a-z]+".r.findAllIn(text).toList.groupBy(identity).map { case (w, ws) => (w, ws.size) }.toList
    counts.sortBy { case (w, n) => (-n, w) }.take(3).foreach { case (w, n) => println(s"$w $n") }
  }
}
