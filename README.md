# Practice_XibView

##説明

参考サイトをもとに、XibViewを作成しました。

[XibView](Practice_XibView/XibViews/DefaultXibView)

- XibView.swift
- XibView.xib

[Storyboard](Practice_XibView/ViewControllers/First.storyboard)



##XibViewの作り方振り返り

- Step1. 「XibView.swift」ファイルを参考に、自作swiftファイルを作成し、必要ならカスタマイズする。
- Step2. 自作xibファイルの File's Owner に、Step1で作成したクラスをセットする。
-  Step3. 任意のstoryboardのUIViewのクラス名に、Step1で作成したクラスをセットする。nibNameプロパティに、Step2で作成したxibファイル名をセットする。




## 参考元サイト
https://medium.com/zenchef-tech-and-product/how-to-visualize-reusable-xibs-in-storyboards-using-ibdesignable-c0488c7f525d
