import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_old_price,
    this.product_detail_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.pinkAccent,
          title: Text('Flutter Shop'),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {})
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 300.00,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\€${widget.product_detail_old_price}",
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                        Expanded(
                          child: new Text(
                            "\€${widget.product_detail_price}",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // ======= Buttons =======
            Row(
              children: <Widget>[
                // ==== Size buttons ====
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Size"),
                              content: new Text("Pick a size"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Size")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),

                // ==== Color Picker button ====
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Color"),
                              content: new Text("Pick a color"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Color")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),

                // ==== Quantity button ====
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Qty"),
                              content: new Text("How many?"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Qty")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // ======= Second Row of Buttons =======
            Row(
              children: <Widget>[
                // ====== Buy Now Button =====
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now"),
                )),

                // ===== Add to Cart button =====
                new IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.pinkAccent,
                    ),
                    onPressed: () {}),

                //===== Add to wishlist/favorites button =====
                new IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.pinkAccent,
                    ),
                    onPressed: () {}),
              ],
            ),

            // ====== Product Details Section ======
            Divider(),
            new ListTile(
              title: new Text("Product Details"),
              subtitle: new Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet leo aliquet, "
                "tempus leo maximus, vehicula nulla. Pellentesque vehicula ante quis dolor auctor, "
                "eget pulvinar urna tincidunt. Etiam sapien tortor, porttitor sit amet commodo sit amet, "
                "facilisis eu tellus. Donec luctus, dui sit amet egestas scelerisque, dui odio suscipit leo, "
                "et ultrices nisi nulla non libero. Curabitur aliquam sodales faucibus. Quisque placerat pulvinar "
                "egestas. Sed aliquet, dui sit amet mattis porttitor, ligula tellus laoreet quam, bibendum aliquet "
                "dui neque vel mi. Praesent vel dolor sit amet ligula imperdiet lacinia. Phasellus id convallis ante, "
                "scelerisque tempor tortor. Aenean laoreet id tortor eget pre",
                textAlign: TextAlign.justify,
              ),
            ),
            Divider(),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Name",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                ),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Brand",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Condition",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
