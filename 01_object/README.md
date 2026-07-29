# Ruby 入門 オブジェクト指向編

第1回　オブジェクト指向って何？

## この動画について

📺 **[動画はこちら](https://youtu.be/bFQEHpKXJgE)**


Ruby入門・オブジェクト指向編の第1回では、「オブジェクト指向って何？」という基本の考え方をわかりやすく解説します。

カプセル化・継承・ポリモーフィズムといったオブジェクト指向の三大要素をざっくり理解したうえで、

Rubyが「すべてがオブジェクト」と言われる理由を、実際のirb（対話環境）で確認していきます。

たとえば数値や文字列といった身近なデータも、実はオブジェクト！

コードを動かしながら、オブジェクト指向の世界を楽しく体感しましょう。


---
## 動画の内容

今回は、Ruby 入門 オブジェクト指向編、第1回　オブジェクト指向って何？

オブジェクト指向の考え方、Rubyにおける「すべてがオブジェクト」、簡単なオブジェクトの例について学習します。

### オブジェクト指向って何？

プログラミングを学ぶと必ず出てくる『オブジェクト指向』。名前は難しそうですが、考え方はシンプルです！

オブジェクト指向とは、モノ（オブジェクト）を中心に考えるプログラミングのやり方です。

Rubyは、このオブジェクト指向をベースにした言語なんです。


### オブジェクト指向の考え方 （カプセル化・継承・ポリモーフィズム）

#### カプセル化

カプセル化とは、**データ（インスタンス変数）と処理（メソッド）をひとまとめにして外から勝手に触られないようにする仕組み**です。

Rubyでは @balance のようなインスタンス変数は外部から直接アクセスできません。代わりに、deposit や show_balance のようなメソッドを通して操作します。」

```ruby
class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def show_balance
    @balance
  end
end

account = BankAccount.new(100)
account.deposit(50)
puts account.show_balance  # => 150
```

このように、外から直接 @balance をいじるのではなく、メソッド経由で安全に扱うのがカプセル化です。

#### 継承

継承は、既存のクラスをベースにして新しいクラスを作れる仕組みです。

```ruby
class Animal
  def speak
    "..."
  end
end

class Dog < Animal
  def speak
    "ワンワン！"
  end
end

dog = Dog.new
puts dog.speak  # => ワンワン！
```

Animal クラスを継承して Dog クラスを作れば、共通の性質を引き継ぎつつ、動きを追加できます。


#### ポリモーフィズム

ポリモーフィズムは、同じメソッド名でもクラスごとに振る舞いを変えられる仕組みです。

```ruby
class Animal
  def speak
    "..."
  end
end

class Dog < Animal
  def speak
    "ワンワン！"
  end
end

class Cat < Animal
  def speak
    "ニャー！"
  end
end

animals = [Dog.new, Cat.new]

animals.each do |a|
  puts a.speak
end
# => ワンワン！
# => ニャー！
```


- カプセル化
- 継承
- ポリモーフィズム

この3つがオブジェクト指向の基本です。


### Rubyにおける 「すべてがオブジェクト」の世界

みなさん、Rubyの世界では「すべてがオブジェクト」って聞いたことありますか？

実は、数値も文字列も true や false さえも、全部オブジェクトなんです。

例えば `1.class` と実行すると…結果は `Integer`。

`"Hello".class` なら… `String`。

`true.class` だって、ちゃんと `TrueClass` が返ります。

つまり、Rubyではどんな値も「クラス」に属するオブジェクト。

だからメソッドを呼び出せるんです。


#### 具体例

数値を文字列に変換
```bash
1.to_s     # => “1
```

文字列を大文字
```bash
"hi".upcase # => "HI"
```

false を文字列に変換
```bash
false.to_s  # => "false"
```

これがオブジェクト指向らしい世界なんです。

Rubyでは「すべてがオブジェクト」。

これを理解することで、オブジェクト指向の考え方がグッと身近になりますよ！


### 簡単なオブジェクト例（文字列や数値）

#### 123も"hello"もオブジェクト！？

Rubyでは数字や文字もオブジェクトなんです！

実際に irb で確かめてみましょう！

```ruby
irb(main):001> 123.class
=> Integer
irb(main):002> 
```

`123` と入力して `.class` を呼ぶと、`Integer` クラスのオブジェクトだとわかります！



#### 文字列のクラス確認

```ruby
irb(main):002> "hello".class
=> String
```

文字列の "hello" も、ちゃんと String クラスのオブジェクトですね。

#### メソッドを呼んでみる

```ruby
irb(main):003> 123.to_s
=> "123"
irb(main):004> "hello".upcase
=> "HELLO"
```

オブジェクトなので、こうやってメソッドも呼び出せます。

数字も文字も、クラスを持ったオブジェクトなんです！

### まとめ

- Rubyでは「すべてがオブジェクト」。
- これを理解することで、オブジェクト指向の考え方がグッと身近になりますよ！

