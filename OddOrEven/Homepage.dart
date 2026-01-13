import 'package:flutter/material.dart';

enum ProductTypeEnum {Downloadable,Deliverable,Onshop,Resever}
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var  _name;
  var _desc;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final _productSizesList = ["Small", "Meduim", "Large", "XLarge"];

  bool _isTopProduct = false;
  ProductTypeEnum? _productTypeEnum; 
  var _selectedChoice;
  String? _selectedVal; // holds selected value


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRODUCT"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "PRODUCT App",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Add Product detail in the form",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              controller: _descController,
              decoration: const InputDecoration(
                labelText: "Product Description",
                prefixIcon: Icon(Icons.description),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            CheckboxListTile(
              value: _isTopProduct,
              onChanged: (value) {
                setState(() {
                  _isTopProduct = value!;
                });
              },
              title: const Text("Top Product"),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            // const SizedBox(height: 10), RadioListTile<int>( title: const Text("1"), value: 1, groupValue: _selectedChoice, onChanged: (value) { setState(() { _selectedChoice = value!; }); }, ),
            // const SizedBox(height: 10), RadioListTile<int>( title: const Text("2"), value: 2, groupValue: _selectedChoice, onChanged: (value) { setState(() { _selectedChoice = value!; }); }, ),
            // const SizedBox(height: 10), RadioListTile<int>( title: const Text("3"), value: 3, groupValue: _selectedChoice, onChanged: (value) { setState(() { _selectedChoice = value!; }); }, ),
//             const SizedBox(height: 10,),
// RadioListTile<ProductTypeEnum>(
//   title: Text(ProductTypeEnum.Deliverable.name), // Changed to Deliverable
//   value: ProductTypeEnum.Deliverable,            // Changed to Deliverable
//   groupValue: _productTypeEnum,
//   onChanged: (val) {
//     setState(() {
//       _productTypeEnum = val;
//     });
//   },
// ),
// RadioListTile<ProductTypeEnum>(
//   title: Text(ProductTypeEnum.Downloadable.name), // Changed to Downloadable
//   value: ProductTypeEnum.Downloadable,             // Changed to Downloadable
//   groupValue: _productTypeEnum,
//   onChanged: (val) {
//     setState(() {
//       _productTypeEnum = val;
//     });
//   },
// ),         
// RadioListTile<ProductTypeEnum>(
//   title: Text(ProductTypeEnum.Onshop.name), // Changed to Downloadable
//   value: ProductTypeEnum.Onshop,             // Changed to Downloadable
//   groupValue: _productTypeEnum,
//   onChanged: (val) {
//     setState(() {
//       _productTypeEnum = val;
//     });
//   },
// ),         
// RadioListTile<ProductTypeEnum>(
//   title: Text(ProductTypeEnum.Resever.name), // Changed to Downloadable
//   value: ProductTypeEnum.Resever,             // Changed to Downloadable
//   groupValue: _productTypeEnum,
//   onChanged: (val) {
//     setState(() {
//       _productTypeEnum = val;
//     });
//   },
// ),         
DropdownButtonFormField(
  value: _selectedVal,
  items: _productSizesList
      .map((e) => DropdownMenuItem(
            child: Text(e),
            value: e,
          )) // DropdownMenuItem
      .toList(),
  onChanged: (val) {
    setState(() {
      _selectedVal = val as String;
    });
  },
  icon: const Icon(Icons.arrow_drop_down_circle,
      color: Colors.deepPurple), // Icon
  dropdownColor: Colors.deepPurple.shade50,
  decoration: InputDecoration(
    labelText: "Product Sizes",
    prefixIcon: Icon(Icons.accessibility_new_rounded,
        color: Colors.deepPurple), // Icon
    border: OutlineInputBorder(), // InputDecoration
  ), 
),
SizedBox(height: 20,),
   Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text(
                    "Go to Shopping",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    // Navigator.push(context, route);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }
}
