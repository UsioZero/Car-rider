class Node 
{
  var data;
  Node next;
  Node(this.data)
  {
    this.next = next;
  }
}

class Llist 
{
  var l_length=0;
  Node head;
  Node tail;
  Llist() {}
  void Newtail(var data)
  {
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
    Node tmp;
    tmp=head;
    head=head.next;
    tmp.next=null;
    l_length--;
  }
    void Deletetail()
  {
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