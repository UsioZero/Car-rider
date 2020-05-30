import 'Classes_Linked_List.dart';
void main() 
{
  Llist first = Llist();
  first.Newtail(1);
  first.Newtail(2);
  first.Newhead(0);
  first.Newinpos(1.5, 2);
  first.Deletehead();
  first.Deletetail();
  first.Printl();
  print( 'Linked list length is:');
  print(first.l_length);
} 