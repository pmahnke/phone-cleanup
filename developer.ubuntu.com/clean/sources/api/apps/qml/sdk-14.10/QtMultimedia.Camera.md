---
Title: QtMultimedia.Camera
---
        
Camera
======

<span class="subtitle"></span>
Access viewfinder frames, and take photos and movies. More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | `import QtMultimedia 5.0` |

<span id="properties"></span>
Properties
----------

-   ****[availability](#availability-prop)**** : enumeration
-   ****[cameraState](#cameraState-prop)**** : enumeration
-   ****[cameraStatus](#cameraStatus-prop)**** : enumeration
-   ****[captureMode](#captureMode-prop)**** : enumeration
-   ****[digitalZoom](#digitalZoom-prop)**** : real
-   ****[errorCode](#errorCode-prop)**** : enumeration
-   ****[errorString](#errorString-prop)**** : string
-   ****[lockStatus](#lockStatus-prop)**** : enumeration
-   ****[maximumDigitalZoom](#maximumDigitalZoom-prop)**** : real
-   ****[maximumOpticalZoom](#maximumOpticalZoom-prop)**** : real
-   ****[mediaObject](#mediaObject-prop)**** : variant
-   ****[opticalZoom](#opticalZoom-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[digitalZoomChanged](#digitalZoomChanged-signal)****(zoom)
-   ****[error](#error-signal)****(errorCode, errorString)
-   ****[lockStatusChanged](#lockStatusChanged-signal)****()
-   ****[manualWhiteBalanceChanged](#manualWhiteBalanceChanged-signal)****(qreal)
-   ****[maximumDigitalZoomChanged](#maximumDigitalZoomChanged-signal)****(zoom)
-   ****[maximumOpticalZoomChanged](#maximumOpticalZoomChanged-signal)****(zoom)
-   ****[opticalZoomChanged](#opticalZoomChanged-signal)****(zoom)
-   ****[stateChanged](#stateChanged-signal)****(state)
-   ****[whiteBalanceModeChanged](#whiteBalanceModeChanged-signal)****(Camera::WhiteBalanceMode)

<span id="methods"></span>
Methods
-------

-   ****[searchAndLock](#searchAndLock-method)****()
-   ****[start](#start-method)****()
-   ****[stop](#stop-method)****()
-   ****[unlock](#unlock-method)****()

<span id="details"></span>
Detailed Description
--------------------

Camera is part of the **QtMultimedia 5.0** module.

You can use `Camera` to capture images and movies from a camera, and manipulate the capture and processing settings that get applied to the images. To display the viewfinder you can use [VideoOutput](../QtMultimedia.VideoOutput.md) with the Camera set as the source.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
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

The various settings and functionality of the Camera stack is spread across a few different child properties of Camera.

| Property                                                            | Description                                                                              |
|---------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| [imageCapture](../QtMultimedia.CameraCapture.md)            | Methods and properties for capturing still images.                                       |
| [videoRecording](../QtMultimedia.CameraRecorder.md)         | Methods and properties for capturing movies.                                             |
| [exposure](../QtMultimedia.CameraExposure.md)               | Methods and properties for adjusting exposure (aperture, shutter speed etc).             |
| [focus](../QtMultimedia.CameraFocus.md)                     | Methods and properties for adjusting focus and providing feedback on autofocus progress. |
| [flash](../QtMultimedia.CameraFlash.md)                     | Methods and properties for controlling the camera flash.                                 |
| [imageProcessing](../QtMultimedia.CameraImageProcessing.md) | Methods and properties for adjusting camera image processing parameters.                 |

Basic camera state management, error reporting, and simple zoom properties are available in the Camera itself. For integration with C++ code, the [mediaObject](#mediaObject-prop) property allows you to access the standard Qt Multimedia camera controls.

Many of the camera settings may take some time to apply, and might be limited to certain supported values depending on the hardware. Some camera settings may be set manually or automatically. These settings properties contain the current set value. For example, when autofocus is enabled the focus zones are exposed in the [focus](../QtMultimedia.CameraFocus.md) property.

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
<td><p><span id="errorCode-prop"></span><span class="name">errorCode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the last error code.

**See also** [error](#error-signal) and [errorString](#errorString-prop).

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

**See also** [error](#error-signal) and [errorCode](#errorCode-prop).

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
<td>The application has requested the camera focus, exposure, or white balance lock with <a href="#searchAndLock-method">searchAndLock()</a>. This state indicates the camera is focusing or calculating exposure and white balance.</td>
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
<tbody>
<tr class="odd">
<td><p><span id="opticalZoom-prop"></span><span class="name">opticalZoom</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the current optical zoom factor.

Signal Documentation
--------------------

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
<td><p><span id="error-signal"></span><span class="name">error</span>(<span class="type"><a href="#errorCode-prop">errorCode</a></span>, <span class="type"><a href="#errorString-prop">errorString</a></span>)</p></td>
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

**See also** [errorCode](#errorCode-prop) and [errorString](#errorString-prop).

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
<td><p><span id="stateChanged-signal"></span><span class="name">stateChanged</span>(<span class="type">state</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the camera state has changed to *state*. Since the state changes may take some time to occur this signal may arrive sometime after the state change has been requested.

The corresponding handler is `onStateChanged`.

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

This is appropriate to call when the camera focus button is pressed (or on a camera capture button half-press). If the camera supports autofocusing, information on the focus zones is available through the [focus](../QtMultimedia.CameraFocus.md) property.

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

