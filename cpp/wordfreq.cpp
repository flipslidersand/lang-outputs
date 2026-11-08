#include <algorithm>
#include <cctype>
#include <iostream>
#include <map>
#include <string>
#include <vector>

int main() {
    std::map<std::string, int> counts;  // ordered by word, so a stable sort keeps ties alphabetical
    std::string w;
    char ch;
    while (std::cin.get(ch)) {
        if (std::isalpha(static_cast<unsigned char>(ch))) w += static_cast<char>(std::tolower(ch));
        else if (!w.empty()) { counts[w]++; w.clear(); }
    }
    if (!w.empty()) counts[w]++;
    std::vector<std::pair<std::string, int>> v(counts.begin(), counts.end());
    std::stable_sort(v.begin(), v.end(), [](const auto &a, const auto &b) { return a.second > b.second; });
    for (size_t i = 0; i < v.size() && i < 3; i++) std::cout << v[i].first << " " << v[i].second << "\n";
}
