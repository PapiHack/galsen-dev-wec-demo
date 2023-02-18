import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/features/add_article/bloc/add_article_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/features/articles/bloc/articles_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/presentation/presentation.dart';

class ArticleFormCreationWidget extends StatefulWidget {
  const ArticleFormCreationWidget({Key? key}) : super(key: key);

  @override
  State<ArticleFormCreationWidget> createState() =>
      _ArticleFormCreationWidgetState();
}

class _ArticleFormCreationWidgetState extends State<ArticleFormCreationWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ArticleController _articleFormController = ArticleController();

  bool _isFormValid() {
    return _articleFormController.title.selection.isValid &&
        _articleFormController.author.selection.isValid &&
        _articleFormController.content.selection.isValid;
  }

  void _clearForm() {
    _articleFormController.title.clear();
    _articleFormController.author.clear();
    _articleFormController.content.clear();
  }

  // TODO: To be implemented !
  void _submitArticleCreationForm() async {
    if (_isFormValid()) {
      final ArticleDTO article = ArticleDTO(
          title: _articleFormController.title.text,
          author: _articleFormController.author.text,
          content: _articleFormController.content.text);
      BlocProvider.of<AddArticleBloc>(context)
          .add(SubmitArticleEvent(article: article));
    } else {
      Notyf.show(
        context,
        message: 'Veuillez remplir tous les champs',
        type: 'error',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: BlocListener<AddArticleBloc, AddArticleState>(
          listener: (context, state) {
            if(state is AddArticleFailureState) {
              Notyf.show(
                context,
                message: state.message,
                type: 'error',
              );
            } else if(state is AddArticleSuccessState) {
              _clearForm();
              context.read<ArticlesBloc>.call().add(ArticlesLoadDataEvent());
              Notyf.show(
                context,
                message: 'Article ajouté avec succés!',
                type: 'success',
              );
            }
          },
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
      ),
    );
  }
}
