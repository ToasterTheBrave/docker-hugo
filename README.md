# Overview
Basic Hugo base image using Dockerize for templating config files

# Usage

This is used as a base image for a hugo site.  It expects the site directory to exist in its usual format:
```
└── site
    └── config.toml
    └── content
        └── ...
    └── layouts
        └── ...
    └── static
        └── ...
```

All config is defaulted to sample data.  In order to override these, set environment variables either in your Dockerfile or when starting the container.

# Example Dockerfile
```
FROM ruppdog/hugo

ENV HUGO_BASEURL "http://tylerruppert.com/"
ENV HUGO_TITLE "Tyler Ruppert"
ENV HUGO_COPYRIGHT "(c) 2015 Tyler Ruppert."
ENV HUGO_NAME "Tyler Ruppert"
ENV HUGO_EMAIL "tylerruppert@gmail.com"
ENV HUGO_GITHUB "https://github.com/truppert"
ENV HUGO_BITBUCKET "https://bitbucket.org/ruppdog"
ENV HUGO_LINKEDIN "https://www.linkedin.com/in/tylerruppert"
ENV HUGO_TAGLINE "DevOps Engineer"
```

# Example Run
```
docker run --rm -p 1313:1313 ruppdog/yourimage
```

# License and Author
Author: Tyler Ruppert

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.