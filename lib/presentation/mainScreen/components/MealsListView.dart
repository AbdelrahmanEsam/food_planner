import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_planner/presentation/mainScreen/components/CircleImage.dart';
import '../../../constants/Theme.dart';
import '../../../domain/model/MealModel.dart';

final theme = MyTheme.light();
class MealsListView extends StatefulWidget {

 final List<MealModel> meals ;
   const MealsListView({super.key , required this.meals});

  @override
  State<MealsListView> createState() => _MealsListViewState();
}

class _MealsListViewState extends State<MealsListView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height:  size.height * 0.5,
      child: GridView.builder(gridDelegate :  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,mainAxisSpacing: 50,childAspectRatio: 1/2,crossAxisSpacing:50 )
          ,itemCount: widget.meals.length, itemBuilder: (context,index) => MealData(meal: widget.meals[index])
        ),
    );
  }
}

class MealData extends StatelessWidget {
  final MealModel? meal ;
  const MealData({super.key,required ,required this.meal});

  @override
  Widget build(BuildContext context) {
    print("this is my meal ${meal?.imageUrl ?? ""}");
  return Card(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 100,height: 100 ,child: CircleImage(imageUrl: meal?.imageUrl ?? "")),
                      Column(mainAxisAlignment : MainAxisAlignment.spaceBetween,children: [
                        Text(
                            textAlign: TextAlign.start,
                            meal?.name ?? "",
                            style: theme.textTheme.displaySmall),
                      ],)
                    ]),
              ],
            ),
  );
  }
}

