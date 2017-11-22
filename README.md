# 第22回: １時間でiPhoneアプリを作ろう
## 時計アプリ

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/sample.gif" width="50%" height="50%"/></div>

  当アカウントへ訪れていただき、誠にありがとうございます。第22回アプリ教室では、時計アプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。

## アプリ教室に興味ある方、歓迎します。
  Meetup
  http://www.meetup.com/ios-dev-in-namba/

## 別途アプリ教室(有料)も開いております
  http://learning-ios-dev.esy.es/

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com

## 開発環境
  Xcode 9.1 / Swift 4

  ・<a href="https://github.com/learn-co-students/reading-ios-intro-to-xcode-qa-public-001">What is Xcode?</a>

## アプリ作成手順

## 0, プロジェクト作成

> 0-1. Xcodeを起動。
>
> 0-2. "Create a new Xcode project"を選択。
>
> 0-3. "Single View Application"を選択して"Next"をクリック。
>
> 0-4. "Product name"を適当に入力して"Next"をクリック。
>
> 0-5. プロジェクトの場所を指定して"Create"をクリック。

## 1, 画像素材を追加する

> 1-1. 画像素材を"Assets.xcassets"にドラッグ&ドロップ。
<details>
<summary>詳細画像をみる</summary>
<div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/fireworks-jp/blob/master/samples/0.gif" /></div>
</details>

[画像ファイルをダウンロード](https://unsplash.com/)

## 2, アプリをデザインする。
#### 🗂 Main.storyboard

2-1. UIImageView を storyboad に追加
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/1.gif" /></div></details>

2-2. 画像を設定し、大きさを調整
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/2.gif" /></div></details>

2-3. 時間を表示するための UILabel を storyboad に追加

背景画像に合わせてテキストカラーを調整
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/3.gif" /></div></details>

2-4. UILabel の 文字サイズ等を調整
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/4.gif" /></div></details>

## 3, UILabel を "ViewController.swift" に紐付ける

#### 🗂 Main.storyboard -> ViewController.swift

> 3-1. UILabel を "ViewController.swift" に紐付ける

★ controlを押しながらドラッグ
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/5.gif" /></div></details>

> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-jp/blob/master/sample/6.gif" /></div></details>

## 4, 下記のコードを"ViewController.swift"に追加

#### 🗂 ViewController.swift

```Swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil,
            repeats: true
        )
        timer.fire()
    }

    @objc func updateTimer() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"

        // Set current time
        timeLabel.text = formatter.string(from: Date())
    }

}
```

## 5, 追加課題

> 5-1. 日付を表示するラベルも追加してみてください。

★ 参考
```Swift
        formatter.dateFormat = "yyyy/MM/dd" // 2017/01/01
```
