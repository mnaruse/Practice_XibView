//
//  ThirdView.swift
//  Practice_XibView
//
//  Created by MiharuNaruse on 2020/08/10.
//  Copyright © 2020 m_rn. All rights reserved.
//
// 参考元サイト：https://medium.com/zenchef-tech-and-product/how-to-visualize-reusable-xibs-in-storyboards-using-ibdesignable-c0488c7f525d
//
// Step1. xibの File's Owner に、このクラスをセットする。
// Step2. 任意のstoryboardのUIViewのクラス名に、このクラスをセットする。nibNameプロパティに、xibファイル名をセットする。

import Foundation
import UIKit

@IBDesignable
class ThirdView: UIView {
    /// xibファイルで作成したview
    var contentView: UIView?
    /// xibファイルのタイトル。のちにStoryboard上で、Identity Inspectorからアクセスできるようにしたい(Step2参照)。
    @IBInspectable var nibName: String?

    override func prepareForInterfaceBuilder() {
        // Interface Builder上で、オブジェクトが作成されたときに呼び出される処理。
        super.prepareForInterfaceBuilder()
        xibSetup()
        contentView?.prepareForInterfaceBuilder()
    }

    override func awakeFromNib() {
        // Interface Builder または nibファイル から読み込まれた後に呼び出される処理。
        super.awakeFromNib()
        xibSetup()
    }

    /// xibのセットアップをする処理。
    func xibSetup() {
        // viewに、nibnameから読み込んだビューをセットする。
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        // オートレイアウト制約のオートリサイジングマスク設定する。
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }

    /// xib名からビューを読み込む処理。
    /// - Returns: ビュー
    private func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self,
                               options: nil).first as? UIView
    }
}
