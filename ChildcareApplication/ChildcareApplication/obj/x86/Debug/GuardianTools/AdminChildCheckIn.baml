   M S B A M L   `   `   `  ����  ChildcareApplication%    GuardianTools.AdminChildCheckIn   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Guardian Search��5   	   $	��660��6!   $	��800��6.    � AllowsTransparency .  � WindowStyle$
 None=�5   	   $��0q�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ���	#FFB3E6DA$��1q�6E   #��� ��6Y   .��5	      �� 
����ح�$��2q�6%   $	��800��69   $	��660��6E   }�. ._�5
   
   � $��-1.6,-1.6,-2.4,-2.4q�6   .+�5      �� -   5         ��Name$ 
btn_Cancel��5   ;      GlassButton#���   6   $��_Close��6O   $
��Left=�6`   $��683,583,0,0q�6{   $	��Top=�6�   $	��107��6�    J� RenderTransformOrigin$ 11.947,11.825&�6�   $��67��6�   $��16(�6�   �� 5      -   5         ��Name$ lbl_searchLable��5      $(��"Search By Last Name or Guardian ID��6-   $
��Left=�6Z   $��340,136,0,0q�6u   $	��Top=�6�   $��27��6�   $	��278��6�   $��14(�6�   $ 0.5,0.5&�6�   �� 5      -   5         ��Name$ txt_SearchBox��5      $
��Left=�6-   $��25��6H   $��340,168,0,0q�6T   $	��Top=�6i   $	��278��6�   $��14(�6�   ���	#FFE6EAE0$��Center=�6�   .��6�    � ToolTip 5      _� 5      ���	#FFE6EAE0.��5      �� -   5        $��	SearchTip��5   $   $,��&Last name or member number of guardian��65   $��14(�6c   ���	#FFE6EAE06q   5      .��5   #   5      �� 5      -   5        $ 
btn_Search��5   <   #���   6   $��_Search��6P   $
��Left=�6b   $��650,148,0,445q�6}   $	��106��6�   $��16(�6�   ���	#FF83CDCD$ 0.526,1.731&�6�   �� 5      -   5        $ 	btn_Login��5   ;   #���   6   $!��_Login As Selected Guardian��6N   $
��Left=�6t   $��264,543,0,0q�6�   $	��Top=�6�   $	��254��6�   $��67��6�   $��16(�6�   $ 0.5,0.5&�6�   �� 5      -   5        	 ��Name$	 cnv_GuardianPic��5      $
��Left=�6.   $	��240��6I   $��	41,60,0,0q�6V   $	��Top=�6i   $	��260��6�   ���	#FFE6EAE06�   &   System.Windows.Controls.DataGrid  5      -   5        
  Name$
 dta_GuardianList��5      $
��Left=�61   $��
41,345,0,0q�6L   $	��Top=�6`   $	��167��6x   $	��715��6�   ���	#FFE6EAE0   
IsReadOnly . $��14(�6�      RowBackground �	#FFE6EAE0   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6�    � 	Resources 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value �� EndPoint �� 
StartPoint � Color � Offset:  4System.Windows.Controls.Primitives.DataGridRowHeader��%*  '        '  �    �� 5      "  6   .�5      ��  � ��$ Center=�6E   �� 5       � �� 5      �� 5   "   $ 	0.5,0.909&�66   $ 	0.5,0.091&�6K   .��5   &   � $ 	#FF264F6A��63   $ 1Q�6E   � 5   &   $ 	#FF6981AE��63   $ 0.488Q�6E   5    #   5"      �� 5#       � ��
 �����67   �� 5$       � �� �	#FF6981AE68   �� 5%       � ��$ 
0, 0, 1, 0q�6<   �� 5&       � ��$ Center=�6G   5'      �� 5(      "  6   .�5)      ��  � �� �	#FFE6EAE067   5*      5+       5,      _� 5-      ���	#FFE6EAE0.��5.      �� -	   5        $��GridTip��5.   $   $"��Select a registered guardian��63   $��14(�6W   ���	#FFE6EAE06e   5/      51      52      53      54      