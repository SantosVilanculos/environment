#!/usr/bin/bash

convert "./favicon.png" -define icon:auto-resize="256,128,96,64,48,32,16" ./favicon.ico

convert "./favicon.png" -resize x16 "./favicon-16x16.png"
convert "./favicon.png" -resize x32 "./favicon-32x32.png"
convert "./favicon.png" -resize x96 "./favicon-96x96.png"

convert "./favicon.png" -resize x36 "./android-icon-36x36.png"
convert "./favicon.png" -resize x48 "./android-icon-48x48.png"
convert "./favicon.png" -resize x72 "./android-icon-72x72.png"
convert "./favicon.png" -resize x96 "./android-icon-96x96.png"
convert "./favicon.png" -resize x144 "./android-icon-144x144.png"
convert "./favicon.png" -resize x192 "./android-icon-192x192.png"

convert "./favicon.png" -resize x57 "./apple-icon-57x57.png"
convert "./favicon.png" -resize x60 "./apple-icon-60x60.png"
convert "./favicon.png" -resize x72 "./apple-icon-72x72.png"
convert "./favicon.png" -resize x76 "./apple-icon-76x76.png"
convert "./favicon.png" -resize x114 "./apple-icon-114x114.png"
convert "./favicon.png" -resize x120 "./apple-icon-120x120.png"
convert "./favicon.png" -resize x144 "./apple-icon-144x144.png"
convert "./favicon.png" -resize x152 "./apple-icon-152x152.png"
convert "./favicon.png" -resize x180 "./apple-icon-180x180.png"
convert "./favicon.png" -resize x192 "./apple-icon-precomposed.png"
convert "./favicon.png" -resize x192 "./apple-icon.png"

convert "./favicon.png" -resize x70 "./ms-icon-70x70.png"
convert "./favicon.png" -resize x144 "./ms-icon-144x144.png"
convert "./favicon.png" -resize x150 "./ms-icon-150x150.png"
convert "./favicon.png" -resize x310 "./ms-icon-310x310.png"

cat <<EOF >"./favicon.html"
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png" />
    <link
      rel="apple-touch-icon"
      sizes="114x114"
      href="/apple-icon-114x114.png"
    />
    <link
      rel="apple-touch-icon"
      sizes="120x120"
      href="/apple-icon-120x120.png"
    />
    <link
      rel="apple-touch-icon"
      sizes="144x144"
      href="/apple-icon-144x144.png"
    />
    <link
      rel="apple-touch-icon"
      sizes="152x152"
      href="/apple-icon-152x152.png"
    />
    <link
      rel="apple-touch-icon"
      sizes="180x180"
      href="/apple-icon-180x180.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="192x192"
      href="/android-icon-192x192.png"
    />
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
    <link rel="manifest" href="/manifest.json" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png" />
    <meta name="theme-color" content="#ffffff" />
  </head>

  <body></body>
</html>
EOF

cat <<EOF >"./manifest.json"
{
    "name": "Document",
    "icons": [
        {
            "src": "\/android-icon-36x36.png",
            "sizes": "36x36",
            "type": "image\/png",
            "density": "0.75"
        },
        {
            "src": "\/android-icon-48x48.png",
            "sizes": "48x48",
            "type": "image\/png",
            "density": "1.0"
        },
        {
            "src": "\/android-icon-72x72.png",
            "sizes": "72x72",
            "type": "image\/png",
            "density": "1.5"
        },
        {
            "src": "\/android-icon-96x96.png",
            "sizes": "96x96",
            "type": "image\/png",
            "density": "2.0"
        },
        {
            "src": "\/android-icon-144x144.png",
            "sizes": "144x144",
            "type": "image\/png",
            "density": "3.0"
        },
        {
            "src": "\/android-icon-192x192.png",
            "sizes": "192x192",
            "type": "image\/png",
            "density": "4.0"
        }
    ]
}
EOF

cat <<EOF >"./browserconfig.xml"
<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
    <msapplication>
        <tile>
            <square70x70logo src="/ms-icon-70x70.png"/>
            <square150x150logo src="/ms-icon-150x150.png"/>
            <square310x310logo src="/ms-icon-310x310.png"/>
            <TileColor>#ffffff</TileColor>
        </tile>
    </msapplication>
</browserconfig>
EOF

# cp "$(dirname -- "$0")/favicon.html" "./"
# cp "$(dirname -- "$0")/browserconfig.xml" "./"
# cp "$(dirname -- "$0")/manifest.json" "./"
