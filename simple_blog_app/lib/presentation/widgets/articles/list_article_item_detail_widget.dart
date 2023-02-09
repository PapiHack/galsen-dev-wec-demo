import 'package:flutter/material.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class ListArticleItemDetailWidget extends StatelessWidget {
  const ListArticleItemDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    TitleWidget(
                      title: 'Écrit par',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      margin: EdgeInsets.only(left: 25),
                    ),
                    // TODO: To be replaced by the article's author
                    TitleWidget(
                      title: 'John Doe',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      margin: null,
                    ),
                  ],
                ),
              ),
              // TODO: To be replaced by the article's creation date
              TitleWidget(
                title: '21 Novembre 2022',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                margin: EdgeInsets.only(left: 25, right: 25),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          child: Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // TODO: To be replaced by the article's content
                TitleWidget(
                  title:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur quisquam ad aliquam veritatis omnis placeat, nulla ratione dolore ullam alias voluptatibus officiis accusamus sed rerum deleniti ipsum, cumque numquam quasi. \n\nQuia, alias deserunt eius in ullam recusandae et? Voluptatibus esse error possimus in distinctio amet, excepturi quasi incidunt non nemo porro quae odit libero doloribus magni, illum aliquam veniam culpa temporibus dignissimos accusamus! Modi debitis doloribus repellat at? Atque, consectetur? Qui, quos veniam pariatur minus deserunt a voluptate corrupti eaque ullam eveniet itaque laudantium. \n\nDolor alias maiores quisquam accusamus natus debitis ipsam sed vero dolores eum, nesciunt ut deleniti est ducimus culpa magnam, laborum id autem. Itaque, sint maxime temporibus exercitationem alias sit repudiandae officiis, eius quia magnam inventore odio! Enim, voluptas perferendis eos magni nihil similique. Facilis illo sapiente nobis unde architecto omnis quis suscipit nihil accusantium, optio possimus dolorum inventore id, ducimus laudantium voluptatum, doloribus porro animi necessitatibus aliquid molestiae non consequatur debitis. Harum deleniti sed illo quidem temporibus ex, repellat, ipsa eaque architecto aperiam placeat doloribus facilis explicabo obcaecati possimus alias nam inventore maiores! Mollitia, laborum dolore? Dolores, tempora earum dolorum recusandae mollitia laudantium nesciunt officia sed illo nemo quis obcaecati deleniti atque saepe eligendi aperiam asperiores nostrum explicabo, fugiat consectetur eum. Repellendus voluptatum consequuntur qui eius est non repudiandae enim itaque nobis nihil earum fuga placeat aut, illo labore! Consequatur temporibus laborum delectus voluptatibus maiores exercitationem minima natus, nesciunt quod quas explicabo accusantium sint illo voluptatum obcaecati incidunt error voluptates deleniti beatae expedita voluptatem? Quibusdam, dolore.',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  margin: EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
