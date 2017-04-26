---
Title: QtSensors.dynamic-sensor-backend-registration
---

# QtSensors.dynamic-sensor-backend-registration

<span class="subtitle"></span>
<!-- $$$dynamic-sensor-backend-registration.html-description -->
<h2>Static Backend Registration</h2>
<p>Sensor backends are generally registered statically. The registration happens when the sensors library is first used and the registration remains in effect while the program runs.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1326d4e3-ca1c-494d-8cb4-81e8200d2d44-../dynamic-sensor-backend-registration/images/sensors-static.png" alt="" /></p><p>Statically registered backends may still exhibit some dynamic behaviour as the QSensorBackendFactory is free to return 0 to indicate that a backend cannot be created.</p>
<h2>Dynamic Backend Registration</h2>
<p>Although static registration is fine for most backends, there are some situations where this is problematic.</p>
<p>The clearest example is backends that represent non-fixed hardware. For example, a game controller that is connected via Bluetooth. As there may be more than one game controller in range of the phone, the program wants to record that a specific game controller should be used. If the backend had been registered statically there would have been no unique information about the controller. Instead, the registration is delayed until the controller is seen.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/eaecbd8d-7c25-4bab-8d7e-ad79ddda640a-../dynamic-sensor-backend-registration/images/sensors-dynamic.png" alt="" /></p>
<h2>Suggested Registration Policy</h2>
<p>A backend for fixed hardware should be registered immediately. Applications can see that the sensor can be used.</p>
<p>A backend for remote hardware should not be registered immediately. Applications can see that the sensor cannot be used. When the remote hardware becomes available, the backend should be registered. Applications can see that the sensor is available now.</p>
<p>If it is necessary to return 0 from a factory for a backend that was registered, the backend should be unregistered. Applications can see that the sensor is no longer available. If the factory can create the backend again, it should be re- gistered. Applications can see that the sensor is available again.</p>
<p>When the underlying hardware is no longer available, the backend should be unregistered. Existing instances of the backend should report error states to the application but should handle the situation gracefully.</p>
<!-- @@@dynamic-sensor-backend-registration.html -->
