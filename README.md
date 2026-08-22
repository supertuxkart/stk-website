# SuperTuxKart Main Website

Source code for the **official SuperTuxKart main website**.

The website is built on [Git-Wiki](https://github.com/Drassil/git-wiki-theme) and includes support for multiple languages and translations.

## 🚀 Running the Website Locally

You can run the website locally using either **Docker Compose** or a **Ruby/Jekyll development environment**.

### 🐳 Using Docker Compose

#### Requirements

* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)

#### Setup

1. Clone this repository and enter the project directory.
2. Start the website:

```bash
docker-compose up stk-website
```

3. Once the container has started, open:

```text
http://127.0.0.1:4000/
```

The website should now be available locally.

---

### 💎 Without Docker

If you prefer to run the website directly, you'll need a **Ruby development environment** with Jekyll.

#### 1. Install Ruby and Jekyll

Follow the official [Jekyll installation guide](https://jekyllrb.com/docs/installation/) for your operating system.

#### 2. Install Bundler

```bash
gem install bundler
```

#### 3. Install dependencies

From the project directory, run:

```bash
bundle install
```

#### 4. Start the development server

```bash
bundle exec jekyll serve
```

If everything starts successfully, open:

```text
http://127.0.0.1:4000/
```

## 🛠️ Development

Jekyll will build the website and serve it locally. Changes to the source files can be viewed by refreshing the local development page.

If Jekyll is running with live reload enabled in your environment, changes may be reflected automatically.

## 📁 Project Structure

The exact structure may change over time, but the project generally follows a standard Jekyll layout:

```text
.
├── _config.yml
├── _layouts/
├── _includes/
├── _posts/
├── assets/
├── pages/
├── Gemfile
└── ...
```

## 🌍 Translations

The website supports multiple languages. Translation-related files and configuration can be found within the repository.

When adding or updating translations, please follow the existing project structure and conventions.

## 📄 License

See the repository's license files for information about the licensing of the website and its components.

## 🏎️ About SuperTuxKart

[SuperTuxKart](https://supertuxkart.net/) is a free and open-source kart racing game featuring multiple characters, tracks, game modes, and multiplayer support.
