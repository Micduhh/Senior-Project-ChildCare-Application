   M S B A M L   `   `   `  ����O  KChildcareApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:AdminTools
AdminTools  5   	   #    AdminTools.AdminEditChildInfo   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   *localclr-namespace:AdminTools     5   	     � Title$  win_AdminEditChildInfo��5   	   $	��700��6(   $	��800��65    � AllowsTransparency .  � WindowStyle$
 None=�5   	   $��0q�5   	    � WindowStartupLocation$ CenterScreen=�5	   	   ���	#FFB3E6DA$��1q�6E   #��� ��6Y   .��5
      �� 
����ح�$��2q�6%   $	��800��69   $	��700��6E   }�. ._�5   
   � $��0,-1,0,1q�6   .+�5      �� -   5         ��Name$ cnv_ChildIcon��5      $
��Left=�6,   $	��152��6G   $��	32,46,0,0q�6T   $	��Top=�6g   $	��158��6   ���	#FFE6EAE0 � ToolTip$% Picture of the logged in Child.��6�   �� 5      -   5         ��Name$ 	lbl_Child��5      $��Child Image:��6'   $
��Left=�6>   $��	32,12,0,0q�6Y   $	��Top=�6l   $��98��6�   $��14(�6�    J� RenderTransformOrigin$ 0.933,0.787&�6�   �� 5      -   5        $ 
lbl_UserID��5      $��Guardian ID:��6(   $
��Left=�6?   $��
32,206,0,0q�6Z   $	��Top=�6n   $��86��6�   $��14(�6�   �� 5      -   5         ��Name$ txt_IDNumber��5      $
��Left=�6,   $��25��6G   $��123,210,0,0q�6S   	 �� TextWrapping$
	 Wrap=�6h   $	��Top=�6|   $��89��6�   {�.  ���	#FFE6EAE0$��14(�6�   $@ :Guardian ID of the Guardian this child is associated with.��6�   $��Center=�6  �� 5      -   5        $ txt_FirstName��5      $
��Left=�6-   $��25��6H   $��
372,26,0,0q�6T   $	��Top=�6h   $	��210��6�   $��0��6�   ���	#FFE6EAE0$��14(�6�   $$ Enter Child's first name here.��6�   
 �� 	MaxLength$
 50��6  $��Center=�6  65  �� 5      -   5        $ lbl_FirstName��5      $��First Name:��6+   $
��Left=�6A   $��
271,22,0,0q�6\   $	��Top=�6p   $��83��6�   $��14(�6�   $ 0.595,-0.108&�6�   �� 5      -   5        $ lbl_LastName��5      $��
Last Name:��6*   $
��Left=�6?   $��
271,68,0,0q�6Z   $	��Top=�6n   $��83��6�   $��14(�6�   �� 5      -   5        $ txt_LastName��5      $
��Left=�6,   $��25��6G   $��
372,72,0,0q�6S   $	��Top=�6g   $	��210��6   $��1��6�   ���	#FFE6EAE0$��14(�6�   $# Enter Child's last name here.��6�   $
 50��6  $��Center=�6  63  �� 5      -	   5        $ lbl_Medical��5      $��Medical Issues:��6)   $
��Left=�6C   $��216,239,0,0q�6^   $	��Top=�6s   $	��109��6�   $��14(�6�   �� 5      -
   5        $ txt_Medical��5      $
��Left=�6+   $
��Auto��6F   $��216,273,0,0q�6T   $
	 Wrap=�6i   $	��Top=�6}   $	��187��6�   $��4��6�   ���	#FFE6EAE0 �� MaxLines$ 6��6�   $��14(�6�   $( "Enter Child's medical issues here.��6�   $	
 200��6*  $��Center=�6:  6\  �� 5      -   5        $ lbl_Allergies��5      $��
Allergies:��6+   $
��Left=�6@   $��421,239,0,0q�6[   $	��Top=�6p   $��89��6�   $��14(�6�   $ 0.563,-0.402&�6�   �� 5      -   5        $ txt_Allergies��5      $
��Left=�6-   $
��Auto��6H   $��421,273,0,0q�6V   $
	 Wrap=�6k   $	��Top=�6   $	��187��6�   $��5��6�   ���	#FFE6EAE0$ 6��6�   $��14(�6�   $# Enter Child's allergies here.��6�   $	
 200��6'  $��Center=�67  6Y  �� 5      -   5         ��Name$ 
btn_Submit��5   ;      GlassButton#���   6   $��_Save��6O   $��323,540,323,0q�6_   $	��Top=�6v   $��60��6�   $��9��6�   $��16(�6�   $ Saves changes.��6�   �� 5      -   5        $ 
btn_Delete��5   ;   #���   6   $��_Delete��6O   $
��Left=�6a   $��
20,626,0,0q�6|   $	��Top=�6�   $	��150��6�   $��60��6�   $��10��6�   $��16(�6�   $- 'Permanently deletes the selected child.��6�   �� 5      -   5        $ btn_MainMenu��5   ;   #���   6   $��_Close��6Q   $��626,626,20,0q�6b   $	��Top=�6x   $��60��6�   $��15��6�   $��16(�6�   $' !Closes the window. Does not save.��6�   �� 5      -   5        $ lbl_Birthday��5      $��	Birthday:��6*   $
��Left=�6>   $��271,132,0,0q�6Y   $	��Top=�6n   $��68��6�   $��14(�6�   �� 5      -   5        $ lbl_Example��5      $9��3 Enter a date or click the Calendar. EX: 01/01/2005��6)   $
��Left=�6g   $��267,106,0,0q�6�   $	��Top=�6�   $��14(�6�   �� 5      -   5         ��Name$ lst_ChildBox��5      $
��Left=�6,   $	��132��6G   $��129,394,0,0q�6T   $	��Top=�6i   $	��561��6�   ���	#FFE6EAE0$��14(�6�   $< 6Select a Child here to edit that child's information. ��6�   ��5      �� 5      .R�5       ��  �� Orientation$ 
Horizontal=�6%   5!      ��5#      �� 5$       �� DataType  AdminTools.Child"  6#   .R�5%      �� .+�5&      �� $��3q�6(   ��63   �� *	firstName+�� 5'      $��3q�6(   ��63   �� *
lastName+�� 5(      $��3q�6-   ��68   �� *image+5)      5*      5,      �� 5-      -   5        $ btn_AddChild��5-   ;   #���   6   $��_Add A Child��6Q   $
��Left=�6h   $��
20,321,0,0q�6�   $	��Top=�6�   $	��150��6�   $��60��6�   $��6��6�   $��16(�6�   $' !Adds a new child to the Guardian.��6�   (  "System.Windows.Controls.DatePicker  5.      -   5          Name$ dte_Birthday��5.      $
��Left=�6/   $	��Top=�6J   $��372,137,0,0q�6b      DisplayDate$ 
2005-01-01��6w      IsTodayHighlighted .  $��2��6�   ���	#FFE6EAE0$��14(�6�   $0 *Click to change selected child's birthday.��6�   63  �� 5/      -   5        $ btn_LinkChild��5/   ;   #���   6   $��_Link This Child��6R   $��20,540,626,96q�6m   $��7��6�   $��16(�6�   $ 0.415,0.988&�6�   $2 ,Links selected child to a specific Guardian.��6�   �� 50      -   5        $ btn_De_LinkChild��50   ;   #���   6   $��_Un-Link This Child��6U   $��626,540,20,96q�6s   $��8��6�   $��16(�6�   $5 /Un-Links selected child from specific Guardian.��6�   �� 51      -   5        $ btn_ChangePicture��51   ;   #���   6   $��Change _Picture��6V   $
��Left=�6p   $��271,175,0,0q�6�   $	��Top=�6�   $	��150��6�   $��3��6�   $��16(�6�   $��60��6�   $ -0.727,3.706&�6  $8 2Click to change the picture of the selected child.��60  �� 52      -   5        $ txt_FilePath��52      $
��Left=�6,   $��25��6G   $��442,192,0,0q�6S   $
	 Wrap=�6h   $	��Top=�6|   $	��220��6�   {�.  ���	#FFE6EAE0$��14(�6�   $* $File path to the photo of the child.��6�   $	
 200��6  $��Center=�6  �� 53      -   5        $ btn_LinkExistingChild��53   ;   #���   6   $��Link _Existing Child��6Z   $��626,321,20,0q�6y   $	��Top=�6�   $��60��6�   $��6��6�   $��16(�6�   $` ZFinds all childeren in the Guardian's "family"  not yet linked to the Guardian logged in. ��6�   54      55      56      