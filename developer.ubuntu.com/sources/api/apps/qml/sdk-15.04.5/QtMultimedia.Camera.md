<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04.5](../index.html) ›
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   Camera

Camera
======

<span class="subtitle"></span>
Access viewfinder frames, and take photos and movies. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[availability](index.html#availability-prop)**** : enumeration
-   ****[cameraState](index.html#cameraState-prop)**** : enumeration
-   ****[cameraStatus](index.html#cameraStatus-prop)**** : enumeration
-   ****[captureMode](index.html#captureMode-prop)**** : enumeration
-   ****[deviceId](index.html#deviceId-prop)**** : string
-   ****[digitalZoom](index.html#digitalZoom-prop)**** : real
-   ****[displayName](index.html#displayName-prop)**** : string
-   ****[errorCode](index.html#errorCode-prop)**** : enumeration
-   ****[errorString](index.html#errorString-prop)**** : string
-   ****[lockStatus](index.html#lockStatus-prop)**** : enumeration
-   ****[maximumDigitalZoom](index.html#maximumDigitalZoom-prop)**** : real
-   ****[maximumOpticalZoom](index.html#maximumOpticalZoom-prop)**** : real
-   ****[mediaObject](index.html#mediaObject-prop)**** : variant
-   ****[metaData](index.html#metaData-prop)****
    -   ****[metaData.gpsLatitude](index.html#metaData.gpsLatitude-prop)**** : variant
    -   ****[metaData.gpsLongitude](index.html#metaData.gpsLongitude-prop)**** : variant
    -   ****[metaData.gpsAltitude](index.html#metaData.gpsAltitude-prop)**** : variant
-   ****[metaData.cameraManufacturer](index.html#metaData.cameraManufacturer-prop)**** : variant
-   ****[metaData.cameraModel](index.html#metaData.cameraModel-prop)**** : variant
-   ****[metaData.dateTimeOriginal](index.html#metaData.dateTimeOriginal-prop)**** : variant
-   ****[metaData.event](index.html#metaData.event-prop)**** : variant
-   ****[metaData.gpsImgDirection](index.html#metaData.gpsImgDirection-prop)**** : variant
-   ****[metaData.gpsProcessingMethod](index.html#metaData.gpsProcessingMethod-prop)**** : variant
-   ****[metaData.gpsSpeed](index.html#metaData.gpsSpeed-prop)**** : variant
-   ****[metaData.gpsTimestamp](index.html#metaData.gpsTimestamp-prop)**** : variant
-   ****[metaData.gpsTrack](index.html#metaData.gpsTrack-prop)**** : variant
-   ****[metaData.orientation](index.html#metaData.orientation-prop)**** : variant
-   ****[metaData.subject](index.html#metaData.subject-prop)**** : variant
-   ****[opticalZoom](index.html#opticalZoom-prop)**** : real
-   ****[orientation](index.html#orientation-prop)**** : int
-   ****[position](index.html#position-prop)**** : enumeration
-   ****[viewfinder](index.html#viewfinder-prop)****
    -   ****[viewfinder.minimumFrameRate](index.html#viewfinder.minimumFrameRate-prop)**** : real
    -   ****[viewfinder.maximumFrameRate](index.html#viewfinder.maximumFrameRate-prop)**** : real
-   ****[viewfinder.resolution](index.html#viewfinder.resolution-prop)**** : size

<span id="signals"></span>
Signals
-------

-   ****[cameraStateChanged](index.html#cameraStateChanged-signal)****(state)
-   ****[digitalZoomChanged](index.html#digitalZoomChanged-signal)****(zoom)
-   ****[error](index.html#error-signal)****(errorCode, errorString)
-   ****[lockStatusChanged](index.html#lockStatusChanged-signal)****()
-   ****[manualWhiteBalanceChanged](index.html#manualWhiteBalanceChanged-signal)****(qreal)
-   ****[maximumDigitalZoomChanged](index.html#maximumDigitalZoomChanged-signal)****(zoom)
-   ****[maximumOpticalZoomChanged](index.html#maximumOpticalZoomChanged-signal)****(zoom)
-   ****[opticalZoomChanged](index.html#opticalZoomChanged-signal)****(zoom)
-   ****[whiteBalanceModeChanged](index.html#whiteBalanceModeChanged-signal)****(Camera::WhiteBalanceMode)

<span id="methods"></span>
Methods
-------

-   ****[searchAndLock](index.html#searchAndLock-method)****()
-   ****[start](index.html#start-method)****()
-   ****[stop](index.html#stop-method)****()
-   ****[unlock](index.html#unlock-method)****()

<span id="details"></span>
Detailed Description
--------------------

You can use `Camera` to capture images and movies from a camera, and manipulate the capture and processing settings that get applied to the images. To display the viewfinder you can use [VideoOutput](../QtMultimedia.VideoOutput/index.html) with the Camera set as the source.

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Item {
    width: 640
    height: 360
    Camera {
        id: camera
        imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash
        exposure {
            exposureCompensation: -1.0
            exposureMode: Camera.ExposurePortrait
        }
        flash.mode: Camera.FlashRedEyeReduction
        imageCapture {
            onImageCaptured: {
                photoPreview.source = preview  // Show the preview in an Image
            }
        }
    }
    VideoOutput {
        source: camera
        anchors.fill: parent
        focus : visible // to receive focus and capture key events when visible
    }
    Image {
        id: photoPreview
    }
}
```

If multiple cameras are available, you can select which one to use by setting the [deviceId](index.html#deviceId-prop) property to a value from [QtMultimedia.availableCameras](../QtMultimedia.QtMultimedia/index.html#availableCameras-prop). On a mobile device, you can conveniently switch between front-facing and back-facing cameras by setting the [position](index.html#position-prop) property.

The various settings and functionality of the Camera stack is spread across a few different child properties of Camera.

| Property                                                            | Description                                                                              |
|---------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| [imageCapture](../QtMultimedia.CameraCapture/index.html)            | Methods and properties for capturing still images.                                       |
| [videoRecording](../QtMultimedia.CameraRecorder/index.html)         | Methods and properties for capturing movies.                                             |
| [exposure](../QtMultimedia.CameraExposure/index.html)               | Methods and properties for adjusting exposure (aperture, shutter speed etc).             |
| [focus](../QtMultimedia.CameraFocus/index.html)                     | Methods and properties for adjusting focus and providing feedback on autofocus progress. |
| [flash](../QtMultimedia.CameraFlash/index.html)                     | Methods and properties for controlling the camera flash.                                 |
| [imageProcessing](../QtMultimedia.CameraImageProcessing/index.html) | Methods and properties for adjusting camera image processing parameters.                 |

Basic camera state management, error reporting, and simple zoom properties are available in the Camera itself. For integration with C++ code, the [mediaObject](index.html#mediaObject-prop) property allows you to access the standard Qt Multimedia camera controls.

Many of the camera settings may take some time to apply, and might be limited to certain supported values depending on the hardware. Some camera settings may be set manually or automatically. These settings properties contain the current set value. For example, when autofocus is enabled the focus zones are exposed in the [focus](../QtMultimedia.CameraFocus/index.html) property.

For additional information, read also the [camera overview](../QtMultimedia.cameraoverview/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availability-prop"></span><span class="name">availability</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the availability state of the camera.

The availability states can be one of the following:

| Value           | Description                                                                                              |
|-----------------|----------------------------------------------------------------------------------------------------------|
| Available       | The camera is available to use                                                                           |
| Busy            | The camera is busy at the moment as it is being used by another process.                                 |
| Unavailable     | The camera is not available to use (there may be no camera hardware)                                     |
| ResourceMissing | The camera cannot be used because of missing resources. It may be possible to try again at a later time. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cameraState-prop"></span><span class="name">cameraState</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera object's current state, which can be one of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>UnloadedState</td>
<td>The initial camera state, with the camera not loaded. The camera capabilities (with the exception of supported capture modes) are unknown. This state saves the most power, but takes the longest time to be ready for capture.
<p>While the supported settings are unknown in this state, you can still set the camera capture settings like codec, resolution, or frame rate.</p></td>
</tr>
<tr class="even">
<td>LoadedState</td>
<td>The camera is loaded and ready to be configured.
<p>In the Idle state you can query camera capabilities, set capture resolution, codecs, and so on.</p>
<p>The viewfinder is not active in the loaded state.</p></td>
</tr>
<tr class="odd">
<td>ActiveState</td>
<td>In the active state the viewfinder frames are available and the camera is ready for capture.</td>
</tr>
</tbody>
</table>

The default camera state is ActiveState.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cameraStatus-prop"></span><span class="name">cameraStatus</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera object's current status, which can be one of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>ActiveStatus</td>
<td>The camera has been started and can produce data, viewfinder displays video frames.
<p>Depending on backend, changing camera settings such as capture mode, codecs, or resolution in ActiveState may lead to changing the status to LoadedStatus and StartingStatus while the settings are applied, and back to ActiveStatus when the camera is ready.</p></td>
</tr>
<tr class="even">
<td>StartingStatus</td>
<td>The camera is starting as a result of state transition to Camera.ActiveState. The camera service is not ready to capture yet.</td>
</tr>
<tr class="odd">
<td>StoppingStatus</td>
<td>The camera is stopping as a result of state transition from Camera.ActiveState to Camera.LoadedState or Camera.UnloadedState.</td>
</tr>
<tr class="even">
<td>StandbyStatus</td>
<td>The camera is in the power saving standby mode. The camera may enter standby mode after some time of inactivity in the Camera.LoadedState state.</td>
</tr>
<tr class="odd">
<td>LoadedStatus</td>
<td>The camera is loaded and ready to be configured. This status indicates the camera device is opened and it's possible to query for supported image and video capture settings such as resolution, frame rate, and codecs.</td>
</tr>
<tr class="even">
<td>LoadingStatus</td>
<td>The camera device loading as a result of state transition from Camera.UnloadedState to Camera.LoadedState or Camera.ActiveState.</td>
</tr>
<tr class="odd">
<td>UnloadingStatus</td>
<td>The camera device is unloading as a result of state transition from Camera.LoadedState or Camera.ActiveState to Camera.UnloadedState.</td>
</tr>
<tr class="even">
<td>UnloadedStatus</td>
<td>The initial camera status, with camera not loaded. The camera capabilities including supported capture settings may be unknown.</td>
</tr>
<tr class="odd">
<td>UnavailableStatus</td>
<td>The camera or camera backend is not available.</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="captureMode-prop"></span><span class="name">captureMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera capture mode, which can be one of the following:

| Value             | Description                                      |
|-------------------|--------------------------------------------------|
| CaptureViewfinder | Camera is only configured to display viewfinder. |
| CaptureStillImage | Prepares the Camera for capturing still images.  |
| CaptureVideo      | Prepares the Camera for capturing video.         |

The default capture mode is `CaptureStillImage`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="deviceId-prop"></span><span class="name">deviceId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique identifier for the camera device being used. It may not be human-readable.

You can get all available device IDs from [QtMultimedia.availableCameras](../QtMultimedia.QtMultimedia/index.html#availableCameras-prop). If no value is provided or if set to an empty string, the system's default camera will be used.

If possible, [cameraState](index.html#cameraState-prop), [captureMode](index.html#captureMode-prop), [digitalZoom](index.html#digitalZoom-prop) and other camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also** [displayName](index.html#displayName-prop) and [position](index.html#position-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digitalZoom-prop"></span><span class="name">digitalZoom</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the current digital zoom factor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayName-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">displayName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the human-readable name of the camera.

You can use this property to display the name of the camera in a user interface.

This QML property was introduced in QtMultimedia 5.4.

**See also** [deviceId](index.html#deviceId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorCode-prop"></span><span class="name">errorCode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the last error code.

**See also** [error](index.html#error-signal) and [errorString](index.html#errorString-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the last error string, if any.

**See also** [error](index.html#error-signal) and [errorCode](index.html#errorCode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lockStatus-prop"></span><span class="name">lockStatus</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of all the requested camera locks.

The status can be one of the following values:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Unlocked</td>
<td>The application is not interested in camera settings value. The camera may keep this parameter without changes, which is common with camera focus, or adjust exposure and white balance constantly to keep the viewfinder image nice.</td>
</tr>
<tr class="even">
<td>Searching</td>
<td>The application has requested the camera focus, exposure, or white balance lock with <a href="index.html#searchAndLock-method">searchAndLock()</a>. This state indicates the camera is focusing or calculating exposure and white balance.</td>
</tr>
<tr class="odd">
<td>Locked</td>
<td>The camera focus, exposure, or white balance is locked. The camera is ready to capture, and the application may check the exposure parameters.
<p>The locked state usually means the requested parameter stays the same, except in cases where the parameter is requested to be updated constantly. For example in continuous focusing mode, the focus is considered locked as long as the object is in focus, even while the actual focusing distance may be constantly changing.</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumDigitalZoom-prop"></span><span class="name">maximumDigitalZoom</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum digital zoom factor supported, or 1.0 if digital zoom is not supported.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumOpticalZoom-prop"></span><span class="name">maximumOpticalZoom</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum optical zoom factor supported, or 1.0 if optical zoom is not supported.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mediaObject-prop"></span><span class="name">mediaObject</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the media object for the camera.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="metaData-prop"></span><strong>metaData group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="metaData.gpsLatitude-prop"></span><span class="name">metaData.gpsLatitude</span> : <span class="type">variant</span></p></td>
</tr>
<tr class="even">
<td><p><span id="metaData.gpsLongitude-prop"></span><span class="name">metaData.gpsLongitude</span> : <span class="type">variant</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="metaData.gpsAltitude-prop"></span><span class="name">metaData.gpsAltitude</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

These properties hold the the geographic position in decimal degrees of the camera at time of capture.

This property group was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.cameraManufacturer-prop"></span><span class="name">metaData.cameraManufacturer</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the manufacturer of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.cameraModel-prop"></span><span class="name">metaData.cameraModel</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the model of the camera.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.dateTimeOriginal-prop"></span><span class="name">metaData.dateTimeOriginal</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the initial time at which the photo or video is captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.event-prop"></span><span class="name">metaData.event</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the event during which the photo or video is to be captured.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.gpsImgDirection-prop"></span><span class="name">metaData.gpsImgDirection</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds direction the camera is facing at the time of capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.gpsProcessingMethod-prop"></span><span class="name">metaData.gpsProcessingMethod</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the method for determining the GPS position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.gpsSpeed-prop"></span><span class="name">metaData.gpsSpeed</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the velocity in kilometers per hour of the camera at time of capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.gpsTimestamp-prop"></span><span class="name">metaData.gpsTimestamp</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the timestamp of the GPS position data.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.gpsTrack-prop"></span><span class="name">metaData.gpsTrack</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds direction of movement of the camera at the time of capture. It is measured in degrees clockwise from north.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.orientation-prop"></span><span class="name">metaData.orientation</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the clockwise rotation of the camera at time of capture.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.subject-prop"></span><span class="name">metaData.subject</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the subject of the capture or recording.

This QML property was introduced in Qt 5.4.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opticalZoom-prop"></span><span class="name">opticalZoom</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the current optical zoom factor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">orientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the physical orientation of the camera sensor.

The value is the orientation angle (clockwise, in steps of 90 degrees) of the camera sensor in relation to the display in its natural orientation.

For example, suppose a mobile device which is naturally in portrait orientation. The back-facing camera is mounted in landscape. If the top side of the camera sensor is aligned with the right edge of the screen in natural orientation, `orientation` returns `270`. If the top side of a front-facing camera sensor is aligned with the right edge of the screen, `orientation` returns `90`.

This QML property was introduced in QtMultimedia 5.4.

**See also** [VideoOutput::orientation](../QtMultimedia.VideoOutput/index.html#orientation-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the physical position of the camera on the hardware system.

The position can be one of the following:

-   `Camera.UnspecifiedPosition` - the camera position is unspecified or unknown.
-   `Camera.BackFace` - the camera is on the back face of the system hardware. For example on a mobile device, it means it is on the opposite side to that of the screem.
-   `Camera.FrontFace` - the camera is on the front face of the system hardware. For example on a mobile device, it means it is on the same side as that of the screen. Viewfinder frames of front-facing cameras are mirrored horizontally, so the users can see themselves as looking into a mirror. Captured images or videos are not mirrored.

On a mobile device it can be used to easily choose between front-facing and back-facing cameras. If this property is set to `Camera.UnspecifiedPosition`, the system's default camera will be used.

If possible, [cameraState](index.html#cameraState-prop), [captureMode](index.html#captureMode-prop), [digitalZoom](index.html#digitalZoom-prop) and other camera parameters are preserved when changing the camera device.

This QML property was introduced in QtMultimedia 5.4.

**See also** [deviceId](index.html#deviceId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="viewfinder-prop"></span><strong>viewfinder group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="viewfinder.minimumFrameRate-prop"></span><span class="name">viewfinder.minimumFrameRate</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="viewfinder.maximumFrameRate-prop"></span><span class="name">viewfinder.maximumFrameRate</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the limits of the preferred frame rate for the viewfinder in frames per second.

This property group was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="viewfinder.resolution-prop"></span><span class="name">viewfinder.resolution</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the resolution of the camera viewfinder. If no resolution is given the backend will use a default value.

This QML property was introduced in Qt 5.4.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cameraStateChanged-signal"></span><span class="name">cameraStateChanged</span>(<span class="type">state</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the camera state has changed to *state*. Since the state changes may take some time to occur this signal may arrive sometime after the state change has been requested.

The corresponding handler is `onCameraStateChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digitalZoomChanged-signal"></span><span class="name">digitalZoomChanged</span>(<span class="type">zoom</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digital zoom setting has changed to *zoom*.

The corresponding handler is `onDigitalZoomChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-signal"></span><span class="name">error</span>(<span class="type"><a href="index.html#errorCode-prop">errorCode</a></span>, <span class="type"><a href="index.html#errorString-prop">errorString</a></span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an error occurs. The enumeration value *errorCode* is one of the values defined below, and a descriptive string value is available in *errorString*.

| Value                    | Description                                              |
|--------------------------|----------------------------------------------------------|
| NoError                  | No errors have occurred.                                 |
| CameraError              | An error has occurred.                                   |
| InvalidRequestError      | System resource doesn't support requested functionality. |
| ServiceMissingError      | No camera service available.                             |
| NotSupportedFeatureError | The feature is not supported.                            |

The corresponding handler is `onError`.

**See also** [errorCode](index.html#errorCode-prop) and [errorString](index.html#errorString-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lockStatusChanged-signal"></span><span class="name">lockStatusChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the lock status (focus, exposure etc) changes. This can happen when locking (e.g. autofocusing) is complete or has failed.

The corresponding handler is `onLockStatusChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualWhiteBalanceChanged-signal"></span><span class="name">manualWhiteBalanceChanged</span>(<span class="type">qreal</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the `manualWhiteBalance` property is changed.

The corresponding handler is `onManualWhiteBalanceChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumDigitalZoomChanged-signal"></span><span class="name">maximumDigitalZoomChanged</span>(<span class="type">zoom</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the maximum digital zoom setting has changed to *zoom*. This can occur when you change between video and still image capture modes, or the capture settings are changed.

The corresponding handler is `onMaximumDigitalZoomChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumOpticalZoomChanged-signal"></span><span class="name">maximumOpticalZoomChanged</span>(<span class="type">zoom</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the maximum optical zoom setting has changed to *zoom*. This can occur when you change between video and still image capture modes, or the capture settings are changed.

The corresponding handler is `onMaximumOpticalZoomChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opticalZoomChanged-signal"></span><span class="name">opticalZoomChanged</span>(<span class="type">zoom</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the optical zoom setting has changed to *zoom*.

The corresponding handler is `onOpticalZoomChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="whiteBalanceModeChanged-signal"></span><span class="name">whiteBalanceModeChanged</span>(<span class="type">Camera::WhiteBalanceMode</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the `whiteBalanceMode` property is changed.

The corresponding handler is `onWhiteBalanceModeChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchAndLock-method"></span><span class="name">searchAndLock</span>()</p></td>
</tr>
</tbody>
</table>

Start focusing, exposure and white balance calculation.

This is appropriate to call when the camera focus button is pressed (or on a camera capture button half-press). If the camera supports autofocusing, information on the focus zones is available through the [focus](../QtMultimedia.CameraFocus/index.html) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the camera. Viewfinder frames will be available and image or movie capture will be possible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the camera, but leaves the camera stack loaded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="unlock-method"></span><span class="name">unlock</span>()</p></td>
</tr>
</tbody>
</table>

Unlock focus, exposure and white balance locks.

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
