# Kids

Kids contains the tooling to run my websites, which mainly consists of
transforming Markdown pages into webpages, with a little styling and plumbing on
the way.

> [!WARNING]  
> This repository used to be a Jekyll theme but not anymore. If you intend to
> use this as a Jekyll theme, please use the `last-ruby-jekyll-version` tag, as
> in:
>
> ```
> gem 'kids', :git => 'https://github.com/dirtyhenry/kids.git', :tag => 'last-ruby-jekyll-version'
> ```

## Development

Run the Vite dev server:

```shellscript
npm run dev
```

## Deployment

First, build your app for production:

```sh
npm run build
```

Then run the app in production mode:

```sh
npm start
```

Now you'll need to pick a host to deploy it to.

### DIY

If you're familiar with deploying Node applications, the built-in Remix app
server is production-ready.

Make sure to deploy the output of `npm run build`

- `build/server`
- `build/client`
