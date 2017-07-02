within Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Examples.STM32F4_Discovery;
model BlinkGPIO
  extends .Modelica.Icons.Example;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4;
  inner Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks.Microcontroller mcu(desiredPeriod = 0.001, platform = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Platform.STM32F4DISC)
  annotation(Placement(visible = true, transformation(origin = {-67, 67}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  STM32F4.Functions.HAL.Init HALinit = STM32F4.Functions.HAL.Init();
  Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks.SynchronizeRealtime synchronizeRealtime1(hal = HALinit)  annotation(Placement(visible = true, transformation(origin = {-4, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks.DigitalReadBoolean User(init = HALinit,pin = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Pin.'0', port = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Port.A)  annotation(
    Placement(visible = true, transformation(origin = {-62, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks.DigitalWriteBoolean LED3(init = HALinit, pin = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Pin.'12', port = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Port.D)  annotation(
    Placement(visible = true, transformation(origin = {-8, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Blocks.DigitalWriteBoolean LED4(init = HALinit, pin = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Pin.'13', port = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Port.D)  annotation(
    Placement(visible = true, transformation(origin = {6, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks.DigitalWriteBoolean LED5(init = HALinit, pin = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Pin.'14', port = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Port.D)  annotation(
    Placement(visible = true, transformation(origin = {-24, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks.DigitalWriteBoolean LED6(init = HALinit, pin = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Pin.'15', port = Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types.Port.D)  annotation(
    Placement(visible = true, transformation(origin = {2, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(User.y, LED6.u) annotation(
    Line(points = {{-50, 20}, {-10, 20}, {-10, -14}}, color = {255, 0, 255}));
  connect(User.y, LED5.u) annotation(
    Line(points = {{-50, 20}, {-36, 20}, {-36, 2}}, color = {255, 0, 255}));
  connect(User.y, LED3.u) annotation(
    Line(points = {{-50, 20}, {-20, 20}, {-20, 48}}, color = {255, 0, 255}));
  connect(User.y, LED4.u) annotation(
    Line(points = {{-50, 20}, {-6, 20}, {-6, 20}, {-6, 20}}, color = {255, 0, 255}));

  annotation(/* synchronizeRealtime1.actualInterval is not legal in experiment annotation*/Experiment(Interval = 0.01), Documentation(info = "<html>
<h1>BlinkGPIO</h1>
<p>BlinkGPIO is a very simple STM model, which reads the input on port A pin 0 (Blue User button on board). While the User button is pressed, all User LEDs (port D pin 12 - 15) are on, else off. Use this model to see if your Modelica tool can export code for STM32F4 MCUs.</p>
<p>STM digital pins 12 - 15 on port D corresponds to digital pin D12 - D15 on the STM32F4-Discovery. If desired, you can connect an external LEDs to this PINs, with a suitable resistor in-between (perhaps 220&#8486;). Connect the other PIN on the LED to ground.</p>
</html>"));
end BlinkGPIO;