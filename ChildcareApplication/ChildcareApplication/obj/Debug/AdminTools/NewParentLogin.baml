   M S B A M L   `   `   `  ����  ChildcareApplication    AdminTools.NewParentLogin   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          �Name$  win_NewParent��5   	    � Title$ win_NewParentLogin��5   	   $	��300��6$   $	��500��61    � AllowsTransparency .  � WindowStyle$
 None=�5   	   $��0q�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ���	#FFE4E8EE.��5	      �� 
����ح�$��2q�6%   $	��500��69   $	��300��6E   }�. ._�5
   
   � .+�5      �� -   5         ��Name$ txt_ParentID1��5      $
��Left=�6-   $��25��6H   $��
100,58,0,0q�6T   $	��Top=�6h   $	��120��6�   ���	#FFE6EAE0$��14(�6�    � ToolTip$( "Enter Spokane Club Member ID here.��6�    �� 	MaxLength$ 6��6�   $��Center=�6	  6+  �� 5      -   5        $ txt_ParentID2��5      $��25��6-   $��342,62,34,0q�69   $	��Top=�6N   ���	#FFE6EAE0$��14(�6�   $+ %Re-Enter Spokane Club Member ID here.��6�   $ 6��6�   $��Center=�6�   6  G� 5      -   5         G�Name$ psw_ParentPIN1��5      $��120,123,292,0q�62   $	��Top=�6I   $��25��6a   ���	#FFE6EAE0$��14(�6�   $&  Enter a 4 digit PIN number here.��6�   	 G� 	MaxLength$	 4��6�   $��Center=�6�   6  G� 5      -   5        $ psw_ParentPIN2��5      $��352,123,60,0q�62   $	��Top=�6H   $��25��6`   ���	#FFE6EAE0$��14(�6�   $) #Re-Enter a 4 digit PIN number here.��6�   $	 4��6�   $��Center=�6�   6  �� 5      $��Guardian ID:��6   $
��Left=�6+   $	��Top=�6F   $��8,54,0,0q�6^   $��14(�6p   �� 5      $��Confirm ID:��6   $
��Left=�6*   $	��Top=�6E   $��
250,58,0,0q�6]   $��14(�6q   �� 5      $��Guardian PIN:��6   $	��Top=�6,   $��18,119,381,0q�6D   $��14(�6Z   �� 5      $��Confirm PIN:��6   $	��Top=�6+   $��250,119,149,0q�6C   $��14(�6Z   �� 5      -   5        
 ��Name$
 btn_AddNewParent��5   ;      GlassButton#���   6   $��Add _New Parent��6U   $
��Left=�6o   $��35,201,0,35q�6�   $	��150��6�   $��16(�6�   $> 8Creates a new Guardian with the login information above.��6�   �� 5      -   5        $
 
btn_Cancel��5   ;   #���   6   $��_Close��6O   $��311,201,35,35q�6`   $��16(�6�   $( "Closes the window. Does not save. ��6�   �� 5      $O��IEnter the Guardian ID as it appears on their Club Card. Then, pick a PIN.��6   $��
18,10,17,0q�6h   $	��Top=�6|   $��14(�6�   5      5      5      