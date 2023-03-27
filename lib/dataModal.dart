class InfoModal
{
  String? category,name,photo,data;
  InfoModal({ this.name, this.photo, this.data,this.category});
}

void main()
{

  List item_name = [
    "Belt",
    "Pents",
    "Shirts",
    "Shoes",
    "T-shirts",
  ];
  List photo = [
    "https://m.media-amazon.com/images/I/41gUfQa6mMS.jpg",
    "https://m.media-amazon.com/images/I/81e4Tkj9dNL._UY550_.jpg",
    "https://m.media-amazon.com/images/I/61geYHHkZCL._UY550_.jpg",
    "https://m.media-amazon.com/images/I/61HfQkk1CRL._UY625_.jpg",
    "https://m.media-amazon.com/images/I/61XQFTiaSjL._UX569_.jpg",
  ];
  List data = [
    "Belt 1000",
    "Pents10000",
    "Shirts25",
    "Shoes 10",
    "T-shirts 9009",
  ];

  for(int i = 0 ; i<5 ; i++)
    {
      print("InfoModal(name: \"${item_name[i]}\" , photo: \"${photo[i]}\" , data: \"${data[i]}\" , category: \"fashion\" ),");
    }
}