//Linked List class from here
class Node 
{
  // here i crate 1 element of linked list
  var data;
  Node next;
  Node(this.data)
  {
    this.next = next;
  }
}

class Llist 
{
  var l_length=0; //this func var element can say u how muck elements at list
  Node head;
  Node tail;
  Llist() {}
  void Newtail(var data)
  {
    //this func add 1 element to tail of list
    Node tmp=Node(data);
    if(head == null)
    {
      head=tmp;
      tail=tmp;
      tmp=null;
    }
    else
    {
      tail.next=tmp;
      tail=tmp;
    }
    l_length++;
  }
    void Printl()
  {
    //this func print all elements at list
    Node tmp;
    tmp=head;
     while(tmp != null)
    {
       print(tmp.data);
      tmp=tmp.next;
    }
  }
    void Newhead(var data)
  {
    //this func add 1 element to head of list
     Node tmp = Node(data);
      if(head == null)
    {
      head=tmp;
      tail=tmp;
      tmp=null;
    }
    else
    {
      tmp.next=head;
      head=tmp;
    }
    l_length++;
  }
    void Newinpos(var data, var n)
  {
    //this func add 1 element at posision of list
    Node el_do;
    Node el_posl;
    Node tmp=Node(data);
    el_posl=head;
    for(int i=0;i<n;i++)
    {
      el_do=el_posl;
      el_posl=el_posl.next;
    }
    el_do.next=tmp;
    tmp.next=el_posl;
    l_length++;
  }
    void Deletehead()
  {
    //this func del 1 element at head of list
    Node tmp;
    tmp=head;
    head=head.next;
    tmp.next=null;
    l_length--;
  }
    void Deletetail()
  {
    //this func del 1 element at tail of list
    Node el_do;
    Node el_posl;
    el_posl=head;
    while(el_posl.next!=null)
    {
      el_do=el_posl;
      el_posl=el_posl.next;
    }
    tail=el_do;
    el_do.next=null;
    l_length--;
  }
    void Deleteinpos(var n)
  {
    //this func del 1 element at posision of list
    Node el_do;
    Node el_posl;
    el_posl=head;
    for(int i=0;i<n;i++)
    {
      el_do=el_posl;
      el_posl=el_posl.next;
    }
    el_do.next=el_posl.next;
    l_length--;
  }

}
//Linked List class end