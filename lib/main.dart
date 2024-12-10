import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List myImage = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT4wJxNF1b5C5BiywI684MCGlriXJj2VpjouVb4NVRz_L-YHKSSxylRkrXrxLzhtW07qE&usqp=CAU",
      "https://5.imimg.com/data5/KT/XF/QM/SELLER-2848987/men-designer-shirtmen-designer-shirt-250x250.jpg",
      "https://images-eu.ssl-images-amazon.com/images/I/51nIfK1492L.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv0RFWLUMkYU6WrdYg4byovzeSFWqxEv_K33wQ2EgJKCfiRIW7HdWcn0vsi2anulsFF-g&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm57ds88yjxWhpPgUVrEocIzbVcJoRm5D1IBl-Hsdwjdvah-IuqgOrH7kBxcVURy5z5Lo&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHR9tS93FQjHpeJKHsCegoki5V34Mh1rO3tUrjpxc-XMyk-4hoWp-hYybRqaSbJTN5VR4&usqp=CAU"
      
    ];
    List myText =[
      "Regular fit slogan",
      "Regular fit polo",
      "Regular fit color black",
      "Regular fit v-neck",
      "Regular fit round neck" ,
      "Regular fit lp"
    ];
    List newText = [
      "PKR 1,1790",
      "PKR 1789-52%",
      "PKR 1200",
      "PKR 1345",
      "PKR 1600",
      "PKR 1567"
    ];
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 150,
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Discover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.notifications,color: Colors.black,),
              ),
              
            ],
        ),



      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey.shade200),
                    height: 35,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search,color: Colors.black,),
                        ),
                        SizedBox(width: 5,),
                        Text("Search anything",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(3)),
                  child: Icon(Icons.menu,color: Colors.white,),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                  Container(
                    height: 35,
                    width:100,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("All",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width:100,
                    decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Men",style: TextStyle(color: Colors.black),)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width:100,
                    decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Women",style: TextStyle(color: Colors.black),)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width:100,
                    decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Kids",style: TextStyle(color: Colors.black),)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width:100,
                    decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text("Bags",style: TextStyle(color: Colors.black),)),
                  )
                ],
              ),
            ),
          ),
      
        SizedBox(height: 15,),
        Expanded(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5),
          itemCount: 6, 
          itemBuilder: (context,index)=>
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Container(
                    child: Center(child: Image.network(myImage[index])),
                    height: 170,
                    // width: 200,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7),border: Border.all(color: Colors.grey)),
                                   ),
                 ),
                 Positioned(
                  right: 69,
                  top: 18,
                   child: Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(3)),
                    height:30,
                    width:30,
                    child: Icon(Icons.favorite_border_outlined,color: Colors.black,),
                   ),
                 )
                ]
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(myText[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(newText[index],style: TextStyle(color: Colors.grey.shade600),),
              )
            ],
          )
          
          ),
        )
      
          
        ]
        ),
                 
               
           








        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: 
             Colors.black,
          
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items:const<BottomNavigationBarItem>[
           BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),
           label: 'Home'
           
           ),
           BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,color: Colors.black,),
           label: 'Saved'
           ),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
           label: 'Cart'
           ),
           BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,color: Colors.black,),
           label: 'Settings'
           ),
          ]
          ),
      ),
    
    );
  }
}