   M S B A M L   `   `   `  ����  ChildcareApplication    AdminTools.EditEvents   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  win_EditEvents��5   	   $	��375��6    $	��850��6-    � AllowsTransparency .  � WindowStyle$
 None=�5   	   $��0q�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ���	#FFB3E6DA$��1q�6E   #��� ��6Y   .��5	      �� 
����ح�$��2q�6%   }�. ._�5
   
   � $��-2q�6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ EventViewDataGrid��5      $��10,87,10,15q�62   $��Center=�6G   $	��273��6b   ���	#FFE6EAE0   RowBackground �	#FFE6EAE0$��Center=�6�   $	��830��6�    � ToolTip$@ :Click an event or select an item from the above combo box.��6     SelectionMode$ Single=�6F     
IsReadOnly . 	 � 	Resources	 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader
 �� 
TargetType �� Property �� Value �� EndPoint �� 
StartPoint � Color � Offset:  4System.Windows.Controls.Primitives.DataGridRowHeader��%*  '        '  �    �� 5      "
  6   .�5      ��  � ��$ Center=�6E   �� 5       � �� 5      �� 5   "   $ 	0.5,0.909&�66   $ 	0.5,0.091&�6K   .��5   &   � $ 	#FF264F6A��63   $ 1Q�6E   � 5   &   $ 	#FF6981AE��63   $ 0.488Q�6E   5   #   5      �� 5       � ��
 �����67   �� 5       � �� �	#FF6981AE68   �� 5       � ��$ 
0, 0, 1, 0q�6<   �� 5       � ��$ Center=�6G   5      �� 5      "
  6   .�5      ��  � �� �	#FFE6EAE067   5      5      5       �� 5!      -   5         ��Name$ btn_AddEvent��5!   ;      GlassButton#���   6   $��
_Add Event��6Q   $
��Left=�6f   $��	24,36,0,0q�6�   $	��Top=�6�   $	��110��6�   $��0��6�   $ Add a new event.��6�   �� 5"      -   5         ��Name$ cmd_EventIDCombo��5"      $
��Left=�61   $��
270,38,0,0q�6L   $	��Top=�6`   $	��210��6x   $��2��6�   $��14(�6�   $! Loaded from the list below.��6�   ��5#      �� 5$      $	 0,1&�6*   $	 0,0&�69   .��5%      � $ 	#FFF0F0F0��6'   $ 0Q�69   � 5&      $ 	#FFE6EAE0��6'   $ 1Q�69   5'      5)      �� 5*      -   5        $ btn_EditEvent��5*   ;   #���   6   $��_Edit Event��6R   $
��Left=�6h   $��
145,36,0,0q�6�   $	��Top=�6�   $	��110��6�   $��1��6�   $ Edit the selected event.��6�   �� 5+      -   5         ��Name$ lbl_EventID��5+      $��
Event Name��6)   $
��Left=�6>   $��
270,12,0,0q�6Y   $	��Top=�6m   $��82��6�   �� 5,      -   5        $ btn_Exit��5,   ;   #���   6   $��_Close��6M   $
��Left=�6^   $��
738,36,0,0q�6y   $	��Top=�6�   $��76��6�   $��3��6�   6�   �� 5-      -   5        $ btn_DeleteEvent��5-   ;   #���   6   $��_Delete Event��6T   $
��Left=�6l   $��
497,36,0,0q�6�   $	��Top=�6�   $	��110��6�   $��1��6�   $ Edit the selected event.��6�   5/      50      51      