fun main() {
    val text = String(System.`in`.readBytes(), Charsets.UTF_8).toLowerCase()
    val counts = Regex("[a-z]+").findAll(text).map { it.value }.groupingBy { it }.eachCount()
    counts.entries.sortedWith(compareBy({ -it.value }, { it.key })).take(3)
        .forEach { println("${it.key} ${it.value}") }
}
