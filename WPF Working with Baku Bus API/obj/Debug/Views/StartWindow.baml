   M S B A M L   `   `   `  ����X  TWPF Working with Baku Bus API, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:WPF_Working_with_Baku_Bus_API.Views#WPF_Working_with_Baku_Bus_API.Views  5   	   d `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF 6I   5    /WPF_Working_with_Baku_Bus_API.Views.StartWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:WPF_Working_with_Baku_Bus_API.Views     5   	   bmapRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     6I   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	     � Title$  Baku Bus��5	   	   $	��450��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�63    � 	Resources 5         Push �� 
TargetType+  %Microsoft.Maps.MapControl.WPF.Pushpin �� CornerRadius��%&  &	        �� 5   
   "  6'   .R�5      �� $��30��6   $��30��6    $ 15��6,   
���  ��._�5      � .+�5      A� $��25��6   $��25��6)   ��5      ��5      	White��65   5      �� 5      $��Center=�6'   $��Center=�6D   5      5      5      5      .��5       � .+�5"   
   �  K� ZIndex$ 1��6   $	��300��6    $	��200��6,   $
��Left=�69   $��Center=�6T   $��20q�6o    � RowDefinitions 5$      �� 5%      $	��50* �6    �� 5&      $	��20* �6    �� 5'      $	��30* �6    .+�5*      �� 
���  ��$��0��6)   $��24(�66   $��Italic$�6D   
���   � �� Padding$ 
5, 0, 0, 0q�6j   $��Bottom=�6    J� Opacity$	 0.8Q�5+      	Line no6/   � 5-      $��1��6   
���  ��$	 0.8Q�61   .+�5/      �� $��5q�6   $��
5, 8, 0, 0q�6I   $
��Bold"�6^   $��0q�6p   ��6&   �� *
BusNumbers+	 �� SelectedItem	 50      �� *	BusNumber+.  (System.Windows.Interactivity.Interaction
   Triggers
 51      /  )System.Windows.Interactivity.EventTrigger  52         	EventName$ SelectionChanged��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 53      6  0System.Windows.Interactivity.InvokeCommandAction     Command 64   �� *SelectionChangedCommand+54      56      57      58      '  !Microsoft.Maps.MapControl.WPF.Map  5:   
   +  %Microsoft.Maps.MapControl.WPF.MapCore   Center<  6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$ 40.409264, 49.867092 6;      	ZoomLevel$ 11Q�6Y      Mode;	  5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$ AerialWithLabels	 6h      CredentialsProvider 6   �� *
Provider+   Children. 5<      3
  -Microsoft.Maps.MapControl.WPF.MapItemsControl
  ��6"   �� *Buses+��5=      �� 5>      .R�5?        #��[  6D   
���   �   Location 6&   �� *
Location+��6e   �� *DISPLAY_ROUTE_CODE+ � ToolTip 5@      �� 5A   "   
�������.+�5B   &   �� $��0, 10, 0, 0q�60   $��Center=�6a   $��	ExtraBold"�6~   $��15(�6�   $
��Wrap=�6�   
���   ���6E   �� *
ROUTE_NAME+5C   E   �� 5E   &   $��30��60   
���  ��6O   �� 5G   &   $��Center=�6G   $��	ExtraBold"�6d   ��60   �� *PLATE+6}   �� 5I   &   $	��300��6I   $	��150��6U   ��6,   �� *	ImagePath+6d   � 5K   &   $��Center=�60   .+�5L   *   �� $��Previous Stop : ��64   $��	ExtraBold"�6L   
���   �6x   �� 5M   *   
���   ���64   �� *	PREV_STOP+6d   5N   '   � 5P   &   $��Center=�60   .+�5Q   *   �� $��Current Stop : ��64   $��	ExtraBold"�6K   
���   �6w   �� 5R   *   
���   ���64   �� *CURRENT_STOP+6g   5S   '   5T   #   5V      5W      5Y      5[      5]      5^      