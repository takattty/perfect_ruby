# クラスから

class Ruler
  attr_accessor :length # インスタンス変数への代入を行っている。自動的に、length= + lengthを定義している。

  def initialize(length) # インスタンス生成時に、インスタンスの初期化を行っている。
    @length = length
  end

  def dispaly_length
    p length
  end
end

ruler = Ruler.new(40)
# ruler.length = 10
p ruler.dispaly_length


# メソッドの中では、そのメソッドが属しているインスタンスをselfという名前の擬似変数で参照可能。
# メソッドの中でレシーバを省略したメソッド呼び出しが行われた場合は、暗黙的にselfがレシーバとなる。


# クラスメソッドは、メソッド名の前にself.を付けて定義します。
# クラス変数は、クラスとそのインスタンスをスコープとする変数。
# 定義は@@から始まります。クラス変数はクラス定義の中やクラスメソッドから参照できます。

class MyClass
  @@cvar = 'Hi my class is good'

  def cvar_in_method
    p @@cvar
  end

  def self.cvar_in_class_method
    p @@cvar
  end
end

my_obj = MyClass.new
my_obj.cvar_in_method # この子はインスタンスに用意されているメソッドを使用している為。
MyClass.cvar_in_class_method # インスタンスに対してではなく、クラスに対してメソッドを用意している為。


# モジュールは、「インスタンス化出来ないクラス」の様なもの。


# 複数行の文字列を表現するのに使う、<<識別子　＝　ヒアドキュメント
# 式展開もバックスラッシュも使用可能。改行も反映。