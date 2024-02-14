---
sidebar_position: 1
---

# Buttons

## General Properties:

- [x] `child`: The child widget inside of the button
- [x] `buttonColor` (optional) : A Color that defines the color of the button. By default, it is set to neuDefault1 (black).
- [x] `shadowColor`(optional) : A Color that defines the color of the button's shadow.By default, it is set to neuShadow
- [x] `borderColor`   (optional) : A Color that defines the color of the button's border.By default, it is set to neuBlack.
- [x] `onPressed`(optional) : A callback function that is called when the button is pressed.
- [x] ` borderRadius`(optional) : A BorderRadiusGeometry that defines the border radius of the button.If not specified,  the 
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;button will have a circular border radius.
- [x] `Offset`: An Offset that defines the amount and direction of the blur applied to the shadow of the card.
- [x] `buttonHeight`(optional) : A double value that defines the height of the button.
- [x] `buttonWidth`(optional) : A double value that defines the width of the button.
- [x] `shadowBlurRadius`(optional) : A double that defines the radius of the blur applied to the shadow of the card.By default,
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; it is    set to neuShadowBlurRadius.
- [x] `borderWidth`  (optional) : A double value that defines the width of the button's border.By default, it is set to neuBorder.
  
- [x] `enableAnimation` (required): Boolean property to toggle the animation property of the Button Widget. It creates 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;smooth pressing animation beginning from  Offset(0,0) to the defined `offset` property.
                                (Default offset value is (4,4)).


- [x] `animationDuration` :(optional) : An Int. defining the Animation Duration in milliseconds.


## NeuTextButton Specific:
## Configure i18n

Modify `docusaurus.config.js` to add support for the `fr` locale:

```js title="docusaurus.config.js"
export default {
  i18n: {
    defaultLocale: 'en',
    locales: ['en', 'fr'],
  },
};
```

## Translate a doc

Copy the `docs/intro.md` file to the `i18n/fr` folder:

```bash
mkdir -p i18n/fr/docusaurus-plugin-content-docs/current/

cp docs/intro.md i18n/fr/docusaurus-plugin-content-docs/current/intro.md
```

Translate `i18n/fr/docusaurus-plugin-content-docs/current/intro.md` in French.

## Start your localized site

Start your site on the French locale:

```bash
npm run start -- --locale fr
```

Your localized site is accessible at [http://localhost:3000/fr/](http://localhost:3000/fr/) and the `Getting Started` page is translated.

:::caution

In development, you can only use one locale at a time.

:::

## Add a Locale Dropdown

To navigate seamlessly across languages, add a locale dropdown.

Modify the `docusaurus.config.js` file:

```js title="docusaurus.config.js"
export default {
  themeConfig: {
    navbar: {
      items: [
        // highlight-start
        {
          type: 'localeDropdown',
        },
        // highlight-end
      ],
    },
  },
};
```

The locale dropdown now appears in your navbar:

![Locale Dropdown](./img/localeDropdown.png)

## Build your localized site

Build your site for a specific locale:

```bash
npm run build -- --locale fr
```

Or build your site to include all the locales at once:

```bash
npm run build
```
