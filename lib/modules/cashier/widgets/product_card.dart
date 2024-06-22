import 'package:e_commers/shared/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/styles/style.dart';
import '../cubit/add_product_cubit.dart';
import '../models/product_model.dart';
import '../views/homePageView.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.productModel});
final ProductsModel productModel;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadiusDirectional.circular(40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https${widget.productModel.name??''}',
                  width: 100,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
             Text(
              widget.productModel.name??'',
              style: Styles.styleBold15,
            ),
            Text(
              "${widget.productModel.price??''} EGP",
              style: Styles.styleBold15,
            ),
            IconButton(
              highlightColor: kPrimarygrayColor,
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      kPrimaryColor)),
              onPressed: () {

                setState(() {

                });
                BlocProvider.of<AddProductCubit>(context).addOrRemoveProduct(productModel: widget.productModel);
              },
              icon:  Icon(
                size: 25,
                color: kPrimarywhiteColor,
                BlocProvider.of<AddProductCubit>(context).products.contains(widget.productModel) ?Icons.check: Icons.add,
              ),
            ),

          ],
        ),
      ),
    );
  }
}