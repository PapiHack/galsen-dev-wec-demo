import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_blog_app/data/data.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class ArticleFormCreationWidget extends StatefulWidget {
  const ArticleFormCreationWidget({Key? key}) : super(key: key);

  @override
  State<ArticleFormCreationWidget> createState() =>
      _ArticleFormCreationWidgetState();
}

class _ArticleFormCreationWidgetState extends State<ArticleFormCreationWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ArticleController _articleFormController = ArticleController();

  // TODO: To be implemented !
  void _submitArticleCreationForm() async {
    Notyf.show(
      context,
      message: 'Article ajouté avec succés!',
      type: 'success',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            CustomTextFormField(
              controller: _articleFormController.title,
              hintText: 'Titre',
              fieldName: 'titre',
            ),
            CustomTextFormField(
              controller: _articleFormController.content,
              hintText: 'Contenu',
              fieldName: 'contenu',
              maxLines: 10,
            ),
            CustomTextFormField(
              controller: _articleFormController.author,
              hintText: 'Auteur',
              fieldName: 'auteur',
            ),
            CustomElevatedButton(
              onPressed: () => _submitArticleCreationForm(),
              child: Center(
                child: Text(
                  'AJOUTER',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
