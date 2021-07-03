# balena-photonix

[Photonix](https://photonix.org/) is a photo management application that streamlines the process of storing, presenting and re-discovering photos.

## Hardware Required

- Raspberry Pi 3/4

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![Deploy with balena](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klutchell/balena-photonix&defaultDeviceType=raspberrypi3)

## Manual Deployment

Alternatively, deployment can be carried out by manually creating a [balenaCloud account](https://dashboard.balena-cloud.com) and application,
flashing a device, downloading the project and pushing it via the [balena CLI](https://github.com/balena-io/balena-cli).

### Environment Variables

Photonix configuration variables can be found here: <https://photonix.org/docs/configuration/>

| Name              | Description                                                                                                   |
| ----------------- | ------------------------------------------------------------------------------------------------------------- |
| `WEBDAV_URL`      | (optional) Provide WebDAV URL to auto-import photos. Leave blank to have the `davfs` service remain disabled. |
| `WEBDAV_USERNAME` | (optional) Username to authenticate to the WebDAV URL above.                                                  |
| `WEBDAV_PASSWORD` | (optional) Password to authenticate to the WebDAV URL above.                                                  |

## Usage/Examples

Once your device joins the fleet you'll need to allow some time for it to download the application and start the services.

When it's done you should be able to access the access the app at <http://photonix.local>

Additional usage instructions for Photonix can be found here: <https://photonix.org/docs/>

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.

## Acknowledgements

- <https://github.com/photonixapp/photonix>
