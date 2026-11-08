# lang-outputs

![License](https://img.shields.io/badge/license-MIT-blue)

## English

### Overview
A per-language index of my working code, starting with Python, Rust and Go and growing to more languages. Each directory
holds small, runnable pieces plus a README stating what it is and how to run it.
Larger projects live in their own repositories and are linked from here.

### Layout
| Directory | Language | Verified entry | Linked projects |
|---|---|---|---|
| [python/](python/) | Python | yes | yes |
| [rust/](rust/) | Rust | yes | yes |
| [go/](go/) | Go | yes | yes |
| [typescript/](typescript/) | TypeScript | yes | yes |
| [javascript/](javascript/) | JavaScript | yes | yes |
| [elixir/](elixir/) | Elixir | yes | yes |
| [sql/](sql/) | SQL | - | yes |
| [shell/](shell/) | Shell | yes | - |
| [ruby/](ruby/) | Ruby | yes | - |
| [perl/](perl/) | Perl | yes | - |
| [php/](php/) | PHP | yes | - |
| [lua/](lua/) | Lua | yes | - |
| [c/](c/) | C | yes | - |
| [cpp/](cpp/) | C++ | yes | - |
| [java/](java/) | Java | yes | - |
| [kotlin/](kotlin/) | Kotlin | yes | - |
| [scala/](scala/) | Scala | yes | - |
| [r/](r/) | R | yes | - |

### Planned (no code yet)
[Swift](swift/), [C#](csharp/), [Zig](zig/), [Dart](dart/), [Julia](julia/), [Clojure](clojure/), [OCaml](ocaml/), [Nim](nim/), [Fortran](fortran/), [Haskell](haskell/)

### Policy
- Every entry says what it does, how to run it, and how it was verified.
- **Verified entry**: a small program for the shared [word-frequency exercise](spec/README.md). `bash scripts/verify.sh` runs every language against the same input and expected output.
- **Linked projects**: public projects in the flipslidersand-labs organization, linked from the language directory.

---

## 日本語

### 概要
Python・Rust・Go を皮切りに、書いたコードを言語別にまとめる索引です。各ディレクトリに、
小さく動く成果物と「何か・どう動かすか」を書いた README を置きます。
大きなプロジェクトは別リポに置き、ここからリンクします。

### 構成
上の表のとおりです。現在は雛形のみで、成果物は順次追加します。

### 未着手(コードなし)
[Swift](swift/), [C#](csharp/), [Zig](zig/), [Dart](dart/), [Julia](julia/), [Clojure](clojure/), [OCaml](ocaml/), [Nim](nim/), [Fortran](fortran/), [Haskell](haskell/)

### 方針
- 各項目に「何をするか・実行方法・どう検証したか」を書きます。
- **検証済みの成果物**: 共通お題([単語頻度](spec/README.md))の小さなプログラムです。`bash scripts/verify.sh` が全言語を同じ入力と期待出力で実行します。
- **リンクした公開プロジェクト**: 組織 flipslidersand-labs の公開プロジェクトです。
