<h1 align="center">
  <a href="https://github.com/jtmb">
    <img src="https://m.media-amazon.com/images/I/81lEZsk5bZL._AC_UF1000,1000_QL80_.jpg" alt="Logo" width="125" height="150">
  </a>
</h1>

<div align="center">
  <b>ARR-STACK 4 Dummies</b> - a beginner driven docker compose configuration designed to deploy a set of popular media management tools.
  This project is intended to provide an a fun, easy to understand baseline for newcommers to self-host their own media server.
  <br />
  <br />
  <a href="https://github.com/jtmb/arr-stack-4-dummies/issues/new?assignees=&labels=bug&title=bug%3A+">Report a Bug</a>
</div>

<br>

# ARR Software included

<b>NZB Stack </b> -
 [Overseerr](https://overseerr.dev/),
 [Sonarr](https://sonarr.tv/),
 [Radarr](https://radarr.video/),
 [Bazarr](https://www.bazarr.media/),
 [Plex](https://www.plex.tv/),
 [Tautulli](https://tautulli.com/),
 [NZB-get](https://nzbget.net/)



<h1 align="left">
  
  <a href="https://github.com/jtmb/arr-stack-4-dummies?tab=readme-ov-file#arr-software-included">
    <img src="https://user-images.githubusercontent.com/1066576/125193232-b41d8900-e28e-11eb-801b-3b643f672536.png" alt="Logo" width="50" height="50">
    <img src="https://res.cloudinary.com/razordarkamg/image/upload/v1621212884/SonarrV3_pufacd.png" alt="Logo" width="50" height="50">
    <img src="https://static-00.iconduck.com/assets.00/radarr-icon-1845x2048-97le6lim.png" alt="Logo" width="50" height="50">
    <img src="https://static-00.iconduck.com/assets.00/bazarr-icon-1024x1024-r79rssva.png" alt="Logo" width="50" height="50">
    <img src="https://cdn.icon-icons.com/icons2/3053/PNG/512/plex_macos_bigsur_icon_189825.png" alt="Logo" width="50" height="50">
    <img src="https://styles.redditmedia.com/t5_75bbd/styles/communityIcon_dsn6jjf37ja11.png" alt="Logo" width="50" height="50">
    <img src="https://avatars.githubusercontent.com/u/3368377?s=200&v=4" alt="Logo" width="50" height="50">
  </a>
</h1>

<br>

<b>Torrent Stack </b> -
 [Overseerr](https://overseerr.dev/),
 [Sonarr](https://sonarr.tv/),
 [Radarr](https://radarr.video/),
 [Bazarr](https://www.bazarr.media/),
 [Plex](https://www.plex.tv/),
 [Tautulli](https://tautulli.com/),
 [Jackett](https://github.com/Jackett/Jackett),
 [Gluetun VPN](https://github.com/qdm12/gluetun),
 [Qbittorrent](https://docs.linuxserver.io/images/docker-qbittorrent/)

<h1 align="left">
  <a href="https://github.com/jtmb/arr-stack-4-dummies?tab=readme-ov-file#arr-software-included">
    <img src="https://user-images.githubusercontent.com/1066576/125193232-b41d8900-e28e-11eb-801b-3b643f672536.png" alt="Logo" width="50" height="50">
    <img src="https://res.cloudinary.com/razordarkamg/image/upload/v1621212884/SonarrV3_pufacd.png" alt="Logo" width="50" height="50">
    <img src="https://static-00.iconduck.com/assets.00/radarr-icon-1845x2048-97le6lim.png" alt="Logo" width="50" height="50">
    <img src="https://static-00.iconduck.com/assets.00/bazarr-icon-1024x1024-r79rssva.png" alt="Logo" width="50" height="50">
    <img src="https://cdn.icon-icons.com/icons2/3053/PNG/512/plex_macos_bigsur_icon_189825.png" alt="Logo" width="50" height="50">
    <img src="https://styles.redditmedia.com/t5_75bbd/styles/communityIcon_dsn6jjf37ja11.png" alt="Logo" width="50" height="50">
    <img src="https://user-images.githubusercontent.com/27040483/28728094-99f3e3f6-73c7-11e7-8f8d-28912dc6ac0d.png" alt="Logo" width="50" height="50">
    <img src="https://raw.githubusercontent.com/qdm12/gluetun/master/title.svg" alt="Logo" width="50" height="50">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/New_qBittorrent_Logo.svg/1200px-New_qBittorrent_Logo.svg.png" alt="Logo" width="50" height="50">
  </a>
</h1>




<br>
<details open="open">
<summary>Table of Contents</summary>

- [ARR Software included](#arr-software-included)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started) 
- [Environment Variables Explained](#environment-variables-explained)
- [Contributing](#contributing)
- [License](#license)

</details>
<br>

---

## Prerequisites
- Linux
- Docker installed on your system.

### Getting Started

Make sure you are in your ``$HOME`` directory of the server or computer you want to deploy on:

```shell 
cd $HOME
```

Download this repository to your home directory :


```shell
git clone https://github.com/jtmb/arr-stack-4-dummies.git
```

cd to the directrory of the compose file ``nzb-get`` or ``torrents`` :

```shell
cd $HOME/arr-stack-4-dummies/nzb-get
```

***Don't forget to*** **[edit](how-to/edit-env-files.md)** ***your ``.env`` file and set vars before running ``docker compose up -d``***

***Also see:*** **[How to edit docker volume mounts](how-to/add-media-volume-mounts.md)**

Run docker compose stack in detached mode :
```shell
docker compose up -d
```

## Environment Variables explained
```yml
COMPOSE_PROJECT_NAME=media-stack
```  
The name of your stack in docker.

```yml
VOLUME_PATH=/mnt/container-program-files
```  
The path where your container volume mounts whill be stored. 

```yml
MEDIA_VOLUME_PATH=/mnt/media
```  
The path where your media whill be stored. 

```yml
VPN_SERVICE_PROVIDER=nord
OPENVPN_USER=nord_user
OPENVPN_PASSWORD=nord_password
SERVER_REGIONS=canada
VPN_TYPE=openvpn
```
Pass in your service provider credentials and VPN type in GlueTun.     
***You only need to worry about these if you deployed ``torrents``.***  
See [here](https://github.com/qdm12/gluetun-wiki/tree/main/setup/providers) for a list of vpn providers and their respective docker compose deployments/enviorment variables.


## Contributing

First off, thanks for taking the time to contribute! Contributions are what makes the open-source community such an amazing place to learn, inspire, and create. Any contributions you make will benefit everybody else and are **greatly appreciated**.

Please try to create bug reports that are:

- _Reproducible._ Include steps to reproduce the problem.
- _Specific._ Include as much detail as possible: which version, what environment, etc.
- _Unique._ Do not duplicate existing opened issues.
- _Scoped to a Single Bug._ One bug per report.

## License

This project is licensed under the **GNU GENERAL PUBLIC LICENSE v3**. Feel free to edit and distribute this template as you like.

See [LICENSE](LICENSE) for more information. 

