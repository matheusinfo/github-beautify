<h1 align="center">GitHub Beautify - everything green</h1>

## explanation

Based on (https://github.com/antfu/1990-script) that's created a script to make a timeline since 1990 on github, i created this script to populate every year on timeline and give a green ar to github.

## how use

```bash
# 1 - Create a new repo on GitHub, public or private
# 2 - Clone the project on your local machine
# 3 - Go to your cloned folder
# 4 - Generate a personal token on GitHub (https://github.com/settings/tokens/new)

$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/matheusinfo/github-beautify/master/script.sh)"

# 5 - Populate Username
# 6 - Populate Access Token
# 7 -Populate Initial Year to timeline
# 8 -Populate the name of principal branch
```

## results

- Timezone since 1980

<img src="https://user-images.githubusercontent.com/48860569/190915613-730bb1e9-3e5e-40db-bcd3-7a7b3dae2eaf.png"/>
<img src="https://user-images.githubusercontent.com/48860569/190915633-912ae42d-4ea7-4217-bdb4-f3bf55387c77.png"/>

## references 

- https://github.com/antfu/1990-script