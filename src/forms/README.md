# Forms

[View prototype on CodePen][codepen].

[codepen]: https://codepen.io/thoughtbot/pen/BeoedZ

### Default

```html
<form class="tbds-form tbds-block-stack tbds-block-stack--gap-4">
  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="full-name-1">
      Full name
    </label>

    <input
      autocomplete="name"
      class="tbds-form__text-input"
      id="full-name-1"
      name="full-name-1"
      type="text"
    >
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="email-address">
      Email
      <small class="tbds-form__help-text">(required)</small>
    </label>

    <input
      autocomplete="email"
      class="tbds-form__text-input"
      id="email-address"
      name="email-address"
      type="email"
      required
    >
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="phone-number">
      Phone number

      <small class="tbds-form__help-text">(optional)</small>

      <span class="tbds-form__help-text tbds-form__help-text--block">
        Yes, we know it’s 2018
      </span>
    </label>

    <input
      autocomplete="tel"
      class="tbds-form__text-input"
      id="phone-number"
      name="phone-number"
      type="tel"
    >
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="age">
      Age
    </label>

    <input
      class="tbds-form__text-input"
      id="age"
      name="age"
      type="number"
    >
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="textarea">
      Biography

      <span class="tbds-form__help-text tbds-form__help-text--block">
        Max 500 characters
      </span>
    </label>

    <textarea
      class="tbds-form__textarea"
      id="textarea"
      maxlength="500"
      name="textarea"
      rows="5"
    ></textarea>
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="id-number">
      ID number

      <span class="tbds-form__help-text tbds-form__help-text--block">
        It’s listed on your ID directly below your name
      </span>
    </label>

    <input
      class="tbds-form__text-input"
      id="id-number"
      name="id-number"
      placeholder="e.g. XX-XXXX-XXXX"
      type="text"
    >
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="select">
      Which office do you work from?
    </label>

    <select id="select">
      <option value="" disabled selected>Select an option…</option>
      <option value="Option 1">Option 1</option>
      <option value="Option 2">Option 2</option>
    </select>
  </div>

  <div class="tbds-block-stack__item">
    <fieldset>
      <legend class="tbds-form__label">
        Privacy settings
      </legend>

      <div class="tbds-form__choice tbds-form__choice--inline">
        <input
          class="tbds-form__choice-input"
          id="radio-inline-1"
          name="privacy"
          type="radio"
          value="Public"
        >

        <label for="radio-inline-1">
          Public
        </label>
      </div>

      <div class="tbds-form__choice tbds-form__choice--inline">
        <input
          class="tbds-form__choice-input"
          id="radio-inline-2"
          name="privacy"
          type="radio"
          value="Private"
        >

        <label for="radio-inline-2">
          Private
        </label>
      </div>
    </fieldset>
  </div>

  <div class="tbds-block-stack__item">
    <fieldset>
      <legend class="tbds-form__label">
        What borough do you live in?
      </legend>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="radio-1"
          name="radio-group"
          type="radio"
          value="Brooklyn"
        >

        <label for="radio-1">
          Brooklyn
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="radio-2"
          name="radio-group"
          type="radio"
          value="Bronx"
        >

        <label for="radio-2">
          Bronx
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="radio-3"
          name="radio-group"
          type="radio"
          value="Manhattan"
        >

        <label for="radio-3">
          Manhattan
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="radio-4"
          name="radio-group"
          type="radio"
          value="Queens"
        >

        <label for="radio-4">
          Queens
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="radio-5"
          name="radio-group"
          type="radio"
          value="Staten Island"
        >

        <label for="radio-5">
          Staten Island
        </label>
      </div>
    </fieldset>
  </div>

  <div class="tbds-block-stack__item">
    <fieldset>
      <legend class="tbds-form__label">
        What foods do you enjoy?

        <span class="tbds-form__help-text tbds-form__help-text--block">
          Select all that apply
        </span>
      </legend>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="food-type-1"
          name="food-types"
          type="checkbox"
          value="food-a"
        >

        <label for="food-type-1">
          Food A
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="food-type-2"
          name="food-types"
          type="checkbox"
          value="food-b"
        >

        <label for="food-type-2">
          Food B
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="food-type-3"
          name="food-types"
          type="checkbox"
          value="food-c"
        >

        <label for="food-type-3">
          Food C
        </label>
      </div>
    </fieldset>
  </div>

  <div class="tbds-block-stack__item">
    <label class="tbds-form__label" for="file-input">
      Upload a file
    </label>

    <input type="file" id="file-input">
  </div>

  <div class="tbds-block-stack__item">
    <fieldset>
      <legend class="tbds-form__label">
        Options
      </legend>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="public"
          name="options"
          type="checkbox"
          value=""
        >

        <label for="public">
          List publicly

          <span class="tbds-form__help-text tbds-form__help-text--block">
            Include this person on the thoughtbot&nbsp;website.
          </span>
        </label>
      </div>

      <div class="tbds-form__choice">
        <input
          class="tbds-form__choice-input"
          id="sales"
          name="options"
          type="checkbox"
          value=""
        >

        <label for="sales">
          Default sales group

          <span class="tbds-form__help-text tbds-form__help-text--block">
            Add this person to Sales Trello cards with no one else on&nbsp;them.
          </span>
        </label>
      </div>
    </fieldset>
  </div>

  <div class="tbds-block-stack__item">
    <button class="tbds-button" type="submit">
      Button
    </button>
  </div>
</form>
```
