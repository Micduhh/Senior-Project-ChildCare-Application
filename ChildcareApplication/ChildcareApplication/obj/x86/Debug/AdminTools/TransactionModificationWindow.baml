   M S B A M L   `   `   `  ����  ChildcareApplication.    (AdminTools.TransactionModificationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$#  TransactionModificationWindow��5   	   $��385.5��6/   $	��279��6>    � AllowsTransparency .  � WindowStyle$
 None=�5   	   $��0q�5   	    � WindowStartupLocation$ CenterScreen=�5   	   ���	#FFB3E6DA$��1q�6E   #��� ��6Y   .��5	      �� 
����ح�$��2q�6%   }�. ._�5
   
   � .+�5      �� -   5         ��Name$ lbl_FromExample��5      $��(MM/DD/YYYY)��6-   $
��Left=�6D   $��
20,309,0,0q�6_   $	��Top=�6s   $��30��6�   $��96��6�   �� 5      -   5        $ lbl_CheckedOutFormat��5      $��(HH:MM:SS PM)��62   $��157,239,-6,0q�6J   $	��Top=�6`   $��30��6x   $
��Left=�6�   $	��124��6�   �� 5      -   5        $ lbl_CheckedInFormat��5      $��(HH:MM:SS AM)��61   $
��Left=�6I   $��
20,239,0,0q�6d   $	��Top=�6x   $��30��6�   $��99��6�   �� 5      -   5        $ lbl_GuardianName��5      $��Full Guardian Name��6.   $
��Left=�6K   $��	10,14,0,0q�6f   $	��Top=�6y   $	��139��6�   $��14(�6�   �� 5      -   5         ��Name$ txt_GuardianName��5      $��Center=�60   $
��Left=�6R   $��25��6m   $��	10,43,0,0q�6y   $	��Top=�6�   $	��255��6�   $��0��6�   ���	#FFE6EAE0$��14(�6    � ToolTip$) #The guardian's first and last name.��6.  �� 5      -   5        $ txt_ChildName��5      $��Center=�6-   $
��Left=�6O   $��25��6j   $��	9,102,0,0q�6v   $	��Top=�6�   $	��256��6�   $��1��6�   ���	#FFE6EAE0$��14(�6  $&  The child's first and last name.��6+  �� 5      -   5        $ txt_CheckIn��5      $��Center=�6+   $
��Left=�6M   $��25��6h   $��
10,220,0,0q�6t   $	��Top=�6�   $	��119��6�   $��3��6�   ���	#FFE6EAE0$��14(�6  $1 +The time at which the child was checked in.��6*  �� 5      -   5        $ txt_CheckOut��5      $��Center=�6,   $��25��6N   $��146,220,10,0q�6Z   $	��Top=�6p   $��4��6�   ���	#FFE6EAE0$��14(�6�   $` ZThe time at which the child was checked out. A late fee may be charged based on this time.��6  �� 5      -	   5        $ txt_TransactionTotal��5      $��Center=�64   $��25��6V   $��146,290,10,0q�6b   $	��Top=�6x   $��6��6�   ���	#FFE6EAE0$��14(�6   $U OA dollar value for the transaction total (do not include the "$" or late fees).��6  �� 5      -
   5         ��Name$ 
btn_Cancel��5   ;      GlassButton#���   6   $��_Cancel��6O   $��
25,343,0,0q�6a   $	��Top=�6u   $��8��6�   $
��Left=�6�   $��85��6�   �� 5      -   5        $ btn_OK��5   ;   #���   6   $��_Submit��6K   $��
0,343,25,0q�6]   $	��Top=�6q   $��7��6�   $��85��6�   $��Right=�6�   $m gSubmitting will update the transaction, update the family balance, and charge a late fee if applicable.��6�   �� 5      -   5        $ lbl_ChildName��5      $��Full Child Name��6+   $
��Left=�6E   $��	10,73,0,0q�6`   $	��Top=�6s   $	��114��6�   $��14(�6�   �� 5      -   5        $ lbl_EventName��5      $��
Event Name��6+   $
��Left=�6@   $��
10,132,0,0q�6[   $	��Top=�6o   $	��114��6�   $��14(�6�   �� 5      -   5        $ lbl_CheckIn��5      $��
Checked In��6)   $
��Left=�6>   $��	9,191,0,0q�6Y   $	��Top=�6l   $��95��6�   $��14(�6�   �� 5      -   5        $ lbl_CheckOut��5      $��Checked Out��6*   $��146,191,10,0q�6@   $	��Top=�6V   $��14(�6n   �� 5      -   5        $ lbl_TransactionTotal��5      $��Transaction Total��62   $��146,261,-21,0q�6N   $	��Top=�6e   $��14(�6}   �� 5      -   5        $ txt_Date��5      $��Center=�6(   $
��Left=�6J   $��25��6e   $��	9,290,0,0q�6q   $	��Top=�6�   $	��119��6�   $��5��6�   ���	#FFE6EAE0$��14(�6  $# The date for the transaction.��6&  �� 5       -   5        $ lbl_TransactionTotal_Copy��5       $��Transaction Date��67   $
��Left=�6R   $��
10,261,0,0q�6m   $	��Top=�6�   $	��115��6�   $��14(�6�   �� 5!      -   5         ��Name$ cmb_EventName��5!      $
��Left=�6.   $��
10,161,0,0q�6I   $	��Top=�6]   $	��255��6u   $��2��6�   $��25��6�   $��14(�6�   $9 3A list of events currently entered in the database.��6�   ��5"      �� 5#      	 �� EndPoint$		 0,1&�6*   
 �� 
StartPoint$	
 0,0&�69   .��5$      �  � Color$ 	#FFF0F0F0��6'    � Offset$ 0Q�69   � 5%      $ 	#FFE6EAE0��6'   $ 1Q�69   5&      5(      5*      5+      5,      