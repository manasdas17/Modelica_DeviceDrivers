within Modelica_DeviceDrivers.Blocks.Examples;
model TestInputJoystick
extends Modelica.Icons.Example;
  InputDevices.JoystickInput joystickInput
    annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
  OperatingSystem.SynchronizeRealtime synchronizeRealtime
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
end TestInputJoystick;
