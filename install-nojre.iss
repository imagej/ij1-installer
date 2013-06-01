;InnoSetupVersion=5.2.3

[Setup]
AppName=ImageJ
AppVerName=ImageJ 1.46r
AppPublisher=NIH
AppPublisherURL=http://imagej.nih.gov/ij/
AppSupportURL=http://imagej.nih.gov/ij/
AppUpdatesURL=http://imagej.nih.gov/ij/
DefaultDirName={pf}\ImageJ
DefaultGroupName=ImageJ
OutputBaseFilename=ij146-nojre-setup
Compression=lzma
AllowNoIcons=yes

[Files]
Source: "{app}\ImageJ.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{app}\ij.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "{app}\ImageJ.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{app}\README.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "{app}\luts\16_colors.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\5_ramps.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\6_shades.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\blue_orange_icb.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\brgbcmyw.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\cool.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Cyan Hot.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\edges.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\gem.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Green Fire Blue.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\HiLo.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\ICA.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\ICA2.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\ICA3.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Magenta Hot.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Orange Hot.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\phase.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Rainbow RGB.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\README.txt"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Red Hot.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\royal.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\sepia.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\smart.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\thal.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\thallium.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\unionjack.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\luts\Yellow Hot.lut"; DestDir: "{app}\luts"; Flags: ignoreversion
Source: "{app}\macros\AA_ReadMe.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\About Startup Macros"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\AnimatedGaussianBlur.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\AnimationMacros.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\BatchModeCalculator.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\BatchModeTest.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\Calculations.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\CompositeSelections.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\CreateImageFromFunction.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\Custom_Profile_Plot.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\DialogDemo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\DisplayWindowTitles.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\DoWandDemo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\EllipseCalibration.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ExamplePlots.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\FFTCustomFilterDemo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\FindMaxPixelLocation.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\FixLineEndings.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\Fonts.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\functions.html"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\GetDateAndTime.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\GetDirectoryDemo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\HtmlDialogDemo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\KeyboardShortcuts.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ListFilesRecursively.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ListSelectionCoordinates.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\LogWindowTricks.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\MacroSet.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\MakeMontage.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\MakeSelectionDemo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\Mandelbrot.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\Measure_And_Set_Label.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\myTool.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ParticleLabelingExample.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\RandomOvals.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\RoiManagerMacros.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\RoiManagerMoveSelections.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ROI_Manager_Stack_Demo.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\RotatingPolygon.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\SineCosineTable.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\Snake.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\StartupMacros.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ToolShortcuts.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\ToolSwitcher.txt"; DestDir: "{app}\macros"; Flags: ignoreversion
Source: "{app}\macros\.FBCLockFolder\.FBCSemaphoreFile"; DestDir: "{app}\macros\.FBCLockFolder"; Flags: ignoreversion
Source: "{app}\macros\tools\3D-Distance-Tool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\3DAngleTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\AbortMacroActionTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\AboutTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\BigCursorTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\ButtonBar.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\CalculatorTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\ClickCoordinatesTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\ClickToTrackTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\ColorPickerTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\ExampleTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\GelMenu.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\GetCursorLocDemoTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\Image_To_Tool_Icon.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\LineAngleTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\LineTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\LUTFileTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\MeasurerAndLabelTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\MirrorSelectionTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\PixelPickerTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\RGBProfilesTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\SelectionColorMenuTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\SpotMeasurementTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\Tools.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\WandAutoMeasureTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\tools\ZProfileTool.txt"; DestDir: "{app}\macros\tools"; Flags: ignoreversion
Source: "{app}\macros\toolsets\Arrow Labelling Tools.txt"; DestDir: "{app}\macros\toolsets"; Flags: ignoreversion
Source: "{app}\macros\toolsets\Magic Montage.txt"; DestDir: "{app}\macros\toolsets"; Flags: ignoreversion
Source: "{app}\macros\toolsets\Stack Tools.txt"; DestDir: "{app}\macros\toolsets"; Flags: ignoreversion
Source: "{app}\macros\toolsets\text.gif"; DestDir: "{app}\macros\toolsets"; Flags: ignoreversion
Source: "{app}\plugins\README.txt"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{app}\plugins\3D\ImageJ_3D_Viewer.jar"; DestDir: "{app}\plugins\3D"; Flags: ignoreversion
Source: "{app}\plugins\3D\Interactive_3D_Surface_Plot.jar"; DestDir: "{app}\plugins\3D"; Flags: ignoreversion
Source: "{app}\plugins\3D\Stack 3D Surface Plot.ijm"; DestDir: "{app}\plugins\3D"; Flags: ignoreversion
Source: "{app}\plugins\3D\Volume_Viewer.jar"; DestDir: "{app}\plugins\3D"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Batch_Measure.txt"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Cell_Counter.jar"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Grid_.class"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Grid_.java"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Measure_And_Label.txt"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Measure_And_Set_Label.txt"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Analyze\Measure_RGB.txt"; DestDir: "{app}\plugins\Analyze"; Flags: ignoreversion
Source: "{app}\plugins\Examples\Image_Inverter.class"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\Image_Inverter.java"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\IPDemoRunner.class"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\IP_Demo.class"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\IP_Demo.java"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\Red_And_Blue.class"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\Red_And_Blue.java"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\Transparent_Image_Overlay.class"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\Transparent_Image_Overlay.java"; DestDir: "{app}\plugins\Examples"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\About_These_Macros.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\AnnularSelection.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\ArrayFunctions.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\BlinkingText.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\BullsEye.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\CellCounting.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\CreateOverlay.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\Create_Synthetic_Image.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\CurveFittingDemo.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\DialogWithHelp.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\DrawParticleEllipseAxis.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\Grid_Overlay.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\MakeOverlayijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\Overlay_Polygons.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\PlotSigmoidDerivatives.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\PolynomialFit.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\Pong.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\RotationalAnimation.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\Table_Tricks.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\TextOverlay.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Macros\ThreeColorPlot.ijm"; DestDir: "{app}\plugins\Examples\-Macros"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\About Scripts"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\About_These_Scripts.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\AlwaysOnTop.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\AutoThresholding_Demo.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Buffered_Image_Roi.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Create_Overlay.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Draw_Fill_Demo.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Example_Plots.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\OrthoViewsDemo.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Rois_To_Overlay.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Roi_Tricks.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\SubPixelSelections.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Examples\-Scripts\Text_Overlay3.js"; DestDir: "{app}\plugins\Examples\-Scripts"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Fast_Filters$1.class"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Fast_Filters.class"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Fast_Filters.java"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Fit_Polynomial.class"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Fit_Polynomial.java"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Floyd_Steinberg_Dithering.class"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Filters\Floyd_Steinberg_Dithering.java"; DestDir: "{app}\plugins\Filters"; Flags: ignoreversion
Source: "{app}\plugins\Graphics\Averaging_Reducer.class"; DestDir: "{app}\plugins\Graphics"; Flags: ignoreversion
Source: "{app}\plugins\Graphics\Averaging_Reducer.java"; DestDir: "{app}\plugins\Graphics"; Flags: ignoreversion
Source: "{app}\plugins\Graphics\Example_Plot.class"; DestDir: "{app}\plugins\Graphics"; Flags: ignoreversion
Source: "{app}\plugins\Graphics\Example_Plot.java"; DestDir: "{app}\plugins\Graphics"; Flags: ignoreversion
Source: "{app}\plugins\Graphics\RGB_Profile_Plot.txt"; DestDir: "{app}\plugins\Graphics"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\Animated_Gif.jar"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\Biorad_Reader.class"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\Biorad_Reader.java"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\Deltavision_Opener.jar"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\DM3_Reader.class"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\DM3_Reader.java"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\Exif_Reader.jar"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\HandleExtraFileTypes.class"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\HandleExtraFileTypes.java"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\IPLab_Reader.class"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\IPLab_Reader.java"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\LSM_Reader.jar"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\nifti_io.jar"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\ZVI_Reader$ZVIBlock.class"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\ZVI_Reader.class"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\Input-Output\ZVI_Reader.java"; DestDir: "{app}\plugins\Input-Output"; Flags: ignoreversion
Source: "{app}\plugins\jars\Jama-1.0.2.jar"; DestDir: "{app}\plugins\jars"; Flags: ignoreversion
Source: "{app}\plugins\Macros\About Plugin Macros"; DestDir: "{app}\plugins\Macros"; Flags: ignoreversion
Source: "{app}\plugins\Macros\About_Plugin_Macros.txt"; DestDir: "{app}\plugins\Macros"; Flags: ignoreversion
Source: "{app}\plugins\Macros\Java_Properties.txt"; DestDir: "{app}\plugins\Macros"; Flags: ignoreversion
Source: "{app}\plugins\Macros\List_Online_Macros.txt"; DestDir: "{app}\plugins\Macros"; Flags: ignoreversion
Source: "{app}\plugins\Macros\Show_All_LUTs.txt"; DestDir: "{app}\plugins\Macros"; Flags: ignoreversion
Source: "{app}\plugins\Stacks\Kalman_Stack_Filter.class"; DestDir: "{app}\plugins\Stacks"; Flags: ignoreversion
Source: "{app}\plugins\Stacks\Kalman_Stack_Filter.java"; DestDir: "{app}\plugins\Stacks"; Flags: ignoreversion
Source: "{app}\plugins\Stacks\Measure_Hyperstack.txt"; DestDir: "{app}\plugins\Stacks"; Flags: ignoreversion
Source: "{app}\plugins\Stacks\Measure_Stack.txt"; DestDir: "{app}\plugins\Stacks"; Flags: ignoreversion
Source: "{app}\plugins\Tools\bezier_tool.jar"; DestDir: "{app}\plugins\Tools"; Flags: ignoreversion
Source: "{app}\plugins\Tools\Common_Commands_Menu.txt"; DestDir: "{app}\plugins\Tools"; Flags: ignoreversion
Source: "{app}\plugins\Tools\ImageJ_Updater_.class"; DestDir: "{app}\plugins\Tools"; Flags: ignoreversion
Source: "{app}\plugins\Tools\ImageJ_Updater_.java"; DestDir: "{app}\plugins\Tools"; Flags: ignoreversion
Source: "{app}\plugins\Tools\Signed_16-bit_to_Unsigned.js"; DestDir: "{app}\plugins\Tools"; Flags: ignoreversion

[Dirs]
Name: "{app}";

[Run]
Filename: "{app}\ImageJ.exe"; Description: "{cm:LaunchProgram,ImageJ}"; Flags: postinstall skipifsilent nowait

[Icons]
Name: "{group}\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: "{app}";
Name: "{group}\{cm:ProgramOnTheWeb,ImageJ}"; Filename: "{app}\ImageJ.url";
Name: "{group}\{cm:UninstallProgram,ImageJ}"; Filename: "{uninstallexe}";
Name: "{userdesktop}\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: "{app}"; Tasks: desktopicon;
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon;

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[UninstallDelete]
Type: files; Name: "{app}\ImageJ.url";

[CustomMessages]
NameAndVersion=%1 version %2
AdditionalIcons=Additional icons:
CreateDesktopIcon=Create a &desktop icon
CreateQuickLaunchIcon=Create a &Quick Launch icon
ProgramOnTheWeb=%1 on the Web
UninstallProgram=Uninstall %1
LaunchProgram=Launch %1
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
