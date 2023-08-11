<img src="https://user-images.githubusercontent.com/63138398/225706659-4fa396f3-fc8a-4cdc-bbd4-3600b323db97.svg" alt="Button Preview" > 

  <h1 align="left">neubrutalism_ui v1.0.0</h1>
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
                  text: const Text(
                    "Hello ",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                    debugPrint("Helloo ");
                  },
                ),
```
</td>
</tr>
</table>

# Usage

### NeuTextButton with Customization (v2.0.0)

<table>
<tr>
<td>

<!--TODO: Responsive on both sides (Use the Newer Code v2.0.0) -->
```dart
NeuTextButton(
                  text: const Text(
                    "Hello ",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                    debugPrint("Helloo ");
                  },
                ),
```
</td>
<td>
<img  src="https://user-images.githubusercontent.com/63138398/260050262-49206b74-1e74-4c07-8753-ecda4e512f42.png"  alt="">
</td>
</tr>
</table>


### The Neu - NeuContainer 
The Main reason behind adding this NeuContainer Widget is to allow the Developers to Create Any custom Widgets which maynot be present in the Package, thus giving them full freedom to customize their Widgets without any restrictions.

<table>
<tr>
<td>


<!-- TODO: Iska Kal dunga -->
```dart
NeuContainer(
    height: 160,
    width: 250,
    child: Column(
      children: [
        const Text(
          "This is NeuContainer",
          style: TextStyle(fontSize: 23),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.accessible_outlined,
              size: 50,
            ),
            Icon(
              Icons.accessible_outlined,
              size: 50,
            ),
            Icon(
              Icons.accessible_outlined,
              size: 50,
            ),
            Icon(
              Icons.accessible_outlined,
              size: 50,
            ),
          ],
        ),
      ],
    ),
  ),
```
</td>
<td>
<img  src="https://user-images.githubusercontent.com/63138398/232233193-01c717a7-c1a6-4c69-b5a7-d8e39d1876eb.png"  alt="">
</td>
</tr>
</table>

<!-- TODO: Fix : Make it responsive -->

#### Examples:
| Component Name | Code                         | Preview                                                                                                                                          |
| -------------- | ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| TextButton     | `NeuTextButton` | <img src="https://user-images.githubusercontent.com/63138398/225709552-5730bd9b-8e18-40c1-96e2-c45e7422a4c8.png" alt="Button Preview" >          |
| NeuSearchBar   | `NeuSearchBar`    | <img src="https://user-images.githubusercontent.com/63138398/226177386-81a09de2-05f5-4848-8287-0fcbd20ba409.png" alt="NeuSearch Preview" >       |
| NeuIconButton  | `NeuIconButton`   | <img src="https://user-images.githubusercontent.com/63138398/226177407-b435f7c2-6234-4943-a33e-6dbf1a714fa6.png" alt="Neu Icon Button Preview" > |
| NeuContainer   | `NeuContainer`   | <img src="https://user-images.githubusercontent.com/63138398/232233193-01c717a7-c1a6-4c69-b5a7-d8e39d1876eb.png" alt="NeuContainer" > |

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

Distributed under the MIT License. See [LICENSE](https://github.com/deepraj02/neubrutalism_ui/blob/main/LICENSE.md) for more information.

## Authors
<!-- TODO: Add name -->
* **Deepraj Baidya** - *Flutter SDE Intern* - [Deepraj Baidya](https://github.com/deepraj02) - *🤔 *


<!-- 

  1. GIF Mobile Screen with all widgets
 2.  Indepth properties analysis
 3.  `NeuBottomNav` Introduction.(Application Video and Tutorial)
 4.  Example code refactor for README (NeuCntainer, NeuBottomNav & NeuTextButton)
 5.  Whats the Difference v1.0.0 vs 2.0.0 (NeuTextButton) {Contains Braking Changes}
 6.  Edit Authors Part.
 7.  
 -->