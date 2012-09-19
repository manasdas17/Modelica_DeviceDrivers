within Modelica_DeviceDrivers.Blocks.Examples;
model TestInputKeyboard
extends Modelica.Icons.Example;
  OperatingSystem.SynchronizeRealtime synchronizeRealtime
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  InputDevices.KeyboardInput keyboardInput
    annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
end TestInputKeyboard;
