class Sample
  def say
    puts "Hello, world!"
  end
end

# クラスからインスタンスを生成し、メソッドを呼び出して実行
sample = Sample.new
sample.say



# 数値や真偽値のプリミティブ型のような値もオブジェクトの為、メソッドが呼び出せる。
p 1.to_s
p true.to_s

# 呼び出したクラスの継承関係を表示。
p String.ancestors

# 〜と表示 ＝　出力
# =>　　　 ＝　戻り値


# 真偽値を返すメソッド名は最後に?がついている事が一般的
p 1.nil?


# 変数名はアンダースコアで繋げた、スネークケースが慣例
sample_variable = 'sample'