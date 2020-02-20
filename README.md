# Assets

## What

**Assets** is an iOS framework to manage a variety of assets. Its main advantages are:

- **Assets** supports both UIKit and SwiftUI
- *modularity*: your application assets are organised in a single module, separate from the rest of your application
- *type safety*: assets are accessed via enumeration values (which *you* define), rather than string literals
- *uniform API*: **Assets** manages Strings, SwiftUI Fonts, System Images, non-system Images, and Colors, using a uniform pattern, like so:
```swift
        Assets.color(.backgroundMainView)
        Assets.systemImage(.doneButton)
```

It achieves its goals by relying on another library of mine, [AssetCatalogAware](https://github.com/wltrup/AssetCatalogAware), which is responsible for defining the various protocols and functions required to manage assets. This separation of concerns is what allows **Assets** to be customisable to your heart's content.

Example projects for both UIKit and SwiftUI are provided. Here are the relevant parts, illustrating how **Assets** is used in practice:

- under SwiftUI:
```swift
        import Assets

        struct ContentView: View {
            var body: some View {
                Button(action: {}) {
                    Assets.systemImage(.doneButton)
                    Text(Assets.string(.exampleText))
                        .font(Assets.font(.someLabelFont))
                }
                .font(Assets.font(.someButtonFont))
                .foregroundColor(Assets.color(.foreground))
                .padding(25)
                .background(Assets.color(.backgroundExampleView))
                .cornerRadius(15)
                .padding(80)
                .background(Assets.color(.backgroundMainView))
            }
        }
```

- under UIKit:
```swift
        import Assets

        class ViewController: UIViewController {

            @IBOutlet private var exampleView: UIView!
            @IBOutlet private var exampleLabel: UILabel!

            override func viewDidLoad() {

                super.viewDidLoad()

                self.view.backgroundColor = Assets.color(.backgroundMainView)
                exampleView.backgroundColor = Assets.color(.backgroundExampleView)
                exampleView.layer.cornerRadius = 20
                exampleLabel.text = Assets.string(.exampleText)

            }

        }
```

## Installation

At the moment, **Assets** can only be installed by cloning or downloading its GitHub repository. I'm waiting for the Swift Package Manager to support resources so I can turn it into a proper package, since I'm moving away from CocoaPods and Carthage.

## Older iOS versions

**Assets** is meant to be used with iOS 13 and above. If you need to support iOS versions below 13.0, you might want to look at [AssetsPre13](https://github.com/wltrup/AssetsPre13), instead.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**Assets** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
