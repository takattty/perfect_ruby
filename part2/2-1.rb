# メソッドを呼び出す際に一つだけ手続きをまとめたブロおくを渡す事ができる。
# ブロックは処理を抽象化する用途に使われる。


# クラスやモジュールの定義式の外はトップレベルといい、そこで定義されたメソッドはグローバルなサブルーチンの様に使える
# 例えば、呼び出しの際にレシーバがいらない
# 関数のように、どこからでも呼び出せる（ごく一部を除く）


# ローカル変数
# 先頭が、小文字のアルファベットかアンダースコアで始まる。
# ruby
# _ruby

# ブロック＋メソッド定義＋クラス/モジュール定義＋トップレベルがスコープ。

foo = 'hey'

def fes
  # puts foo # => 2.rb:20:in `fes': undefined local variable or method `foo' for main:Object (NameError)
  # あるスコープで定義されていないローカルへんすうを参照しようとするとエラーが発生。
  # 今回の例では、メソッドの外で定義されたローカル変数はメソッドの中で使えないから。
end

p foo
fes

# ブロックの外で定義されたローカル変数はブロック内で使用可能。
# しかし、ブロックの中で定義したローカル変数はブロックの外で使用不可能。

greeting = 'hi! '
people = ["Alice", "Bob"]

people.each do |person|
   p greeting + person
end

# p person # undefined local variable or method `person' for main:Object (NameError)


# グローバル変数は、$から始まる必要がある。
$foobar = 'bar'


# 定数は、大文字アルファベットで始まる必要がある。メソッドの中では定義出来ない。


# 式はなんらかの値を返すもの。