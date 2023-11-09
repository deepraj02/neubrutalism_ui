<img src="https://user-images.githubusercontent.com/63138398/225706659-4fa396f3-fc8a-4cdc-bbd4-3600b323db97.svg" alt="Button Preview" > 

  <h1 align="left">neubrutalism_ui v2.0.0 🥳</h1>
<p align="center">
<a href="https://github.com/deepraj02/neubrutalism_ui/issues">Request Feature</a>
<br>
<a href="https://github.com/deepraj02/neubrutalism_ui/issues">Report Bug</a>
</p>

![Contributors](https://img.shields.io/github/contributors/deepraj02/neubrutalism_ui?color=dark-green) ![Stargazers](https://img.shields.io/github/stars/deepraj02/neubrutalism_ui?style=social) ![Issues](https://img.shields.io/github/issues/deepraj02/neubrutalism_ui) ![License](https://img.shields.io/github/license/deepraj02/neubrutalism_ui) 

## Table Of Contents

- [](#)
      - [Examples:](#examples)
  - [Roadmap](#roadmap)
  - [Contributing](#contributing)
    - [Creating A Pull Request](#creating-a-pull-request)
  - [License](#license)
  - [Authors](#authors)

## About The Project

"Neubrutalism UI is a comprehensive UI kit for Flutter that incorporates the principles of Neubrutalism design. With this package, you can easily add beautiful and functional UI components to your Flutter app in a style that emphasizes simplicity and minimalism.

The package includes a variety of UI components such as buttons, cards, forms, and more, each designed with a subtle shadow and rounded corners that add depth and texture to your app. You can customize the appearance of each component to fit the specific needs of your app, including changing the border radius, depth, and color.

Whether you're a beginner or an experienced developer, Neubrutalism UI makes it easy to create elegant and functional UI components in Flutter that align with the principles of Neubrutalism design. With clear and concise documentation and easy installation instructions, you can start using the package in your app today."

## Built With [Flutter](https://flutter.dev/) 💙

## Getting Started
<!-- Whats the differnect v1.0.0 vs 2.0.0 -->

<!-- TODO: Replace v 0.2.0 with this.
v2.0.0 
NeuTextButton(
                  text: const Text(
                    "Hello ",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),

1 . Replaced Widget `child` with `text` (Text) {Breaking Change}.

1. Fixed the Initial UI of the Widget. (Predefined some properties which  are customizeable).

 -->
# What's the Difference !!! `v1.0.0` vs `v2.0.0`✨

Includes Breaking Changes (Refer to Changelog),

<table>
<tr>
<td>

```dart
NeuTextButton(
  borderColor: Colors.black,
  shadowColor: Colors.black,
  buttonHeight: 50,
  buttonWidth: MediaQuery.of(context).size.width * 0.5,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Hello",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    ],
   ),
 ),
```
</td>
<td>

<!-- V 1.0.0 -->
```dart
NeuTextButton(
      borderRadius: BorderRadius.circular(12),
      buttonColor:
          const Color.fromARGB(255, 236, 199, 211),
      buttonHeight: 60,
      buttonWidth: 100,
      enableAnimation: true,
      text: Text(
        "Hello",
        style: GoogleFonts.robotoCondensed(
            textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
),
```
</td>
</tr>
</table>

# Usage

### NeuTextButton with Customization (v2.0.0) : Enable Cool Animation
#### (Set `enableAnimation=true`)
Animations are currently mapped to the value fo offset provided in the `offset` property in the `NeuTextButton` and `NeuIconButton` widgets. 
(P.S: More the Value of the offset more will be the onPressed bounce animation Value.)
<table>
<tr>
<td>


```dart
NeuTextButton(
      borderRadius: BorderRadius.circular(12),
      buttonColor:
          const Color.fromARGB(255, 236, 199, 211),
      buttonHeight: 60,
      buttonWidth: 100,
      enableAnimation: true,
      text: Text(
        "Hello",
        style: GoogleFonts.robotoCondensed(
            textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
),
```
</td>
<td>
<img  src="https://user-images.githubusercontent.com/63138398/265234887-341632d2-5b7c-4e09-b226-7982e4de86c6.gif"  alt="">
</td>
</tr>
</table>


### The Neu - NeuBottomNav 

#### Usage ans Setup

In-order to disable the container overflow behind the Bottom Nav we need to specify the following flags in both the `Scaffold` and `SafeArea` widget.

The NeuBottomNav contains some additional flags such as `hideOnScroll`, `enableFloating` etc:
```dart
Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      child:SafeArea(
        bottom: false,
      ))
```

#### Examples:

<img  src="https://user-images.githubusercontent.com/63138398/265235364-a0afb9b4-1bb7-437b-8cd1-795483e0d781.png"  alt="">

## Roadmap

See the [open issues](https://github.com/deepraj02/neubrutalism_ui/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.
* If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com/deepraj02/neubrutalism_ui/issues/new) to discuss it, or directly create a pull request after you edit the *README.md* file with necessary changes.
* Please make sure you check your spelling and grammar.
* Create individual PR for each suggestion.


### Creating A Pull Request

- Fork the Project
- Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
- Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
- Push to the Branch (`git push origin feature/AmazingFeature`)
- Open a Pull Request (`choose the Staging branch From the Dropdown`)

## License

Distributed under the MIT License. See [LICENSE](https://github.com/deepraj02/neubrutalism_ui/blob/master/LICENSE.md) for more information.

## Author
* **Deepraj Baidya** - *Flutter SDE Intern* - [Deepraj Baidya](https://github.com/deepraj02) - *🤔*

## Contributors
![Contributors](https://contrib.rocks/image?repo=deepraj02/neubrutalism_ui)