# 🚀 Galsen Dev - WeekEnd Code Demo 🚀

[![Made-In-Senegal](https://github.com/GalsenDev221/made.in.senegal/blob/master/assets/badge.svg)](https://github.com/GalsenDev221/made.in.senegal)  
![Issues](https://img.shields.io/github/issues/PapiHack/galsen-dev-wec-demo?style=for-the-badge&logo=appveyor)
![PR](https://img.shields.io/github/issues-pr/PapiHack/galsen-dev-wec-demo?style=for-the-badge&logo=appveyor)
[![Dart](https://img.shields.io/badge/dart-3776AB?style=for-the-badge&logo=dart&logoColor=white)](https://img.shields.io/badge/dart-3776AB?style=for-the-badge&logo=dart&logoColor=white)
[![Flutter](https://img.shields.io/badge/flutter-3776AB?style=for-the-badge&logo=flutter&logoColor=white)](https://img.shields.io/badge/flutter-3776AB?style=for-the-badge&logo=flutter&logoColor=white)
[![NestJS](https://img.shields.io/badge/nestjs-3776AB?style=for-the-badge&logo=nestjs&logoColor=white)](https://img.shields.io/badge/nestjs-3776AB?style=for-the-badge&logo=nestjs&logoColor=white)
[![Docker](https://img.shields.io/badge/docker-3776AB?style=for-the-badge&logo=docker&logoColor=white)](https://img.shields.io/badge/docker-3776AB?style=for-the-badge&logo=docker&logoColor=white)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source-175x29.png?v=103)](https://github.com/ellerbrock/open-source-badges/)

This repo contains the source code of our demo at [GalsenDev](https://github.com/GalsenDev221) "WeekEnd du Code" event.  
The topic of our talk was `Flutter State Management: A Simple Use Case With BLoC & Riverpod`.

You can find the replay of our live session on the [GalsenDev's](https://github.com/GalsenDev221) youtube channel [here](https://www.youtube.com/playlist?list=PLhpNVMvMDCRPsOFS2JZyzOFWwlIyFyvzw).

## Use Case Description

For the demo implementation, we decide to create a simple blog app with three (3) main features/screens :

- A homepage for displaying the list of articles
- Another page for displaying the details of a specific article
- And a last one that allow us to create a new article

We also add some nice features like `pull-to-refresh` and `automatic data polling`.

## Target Design

<table>
    <tr>
        <td><img src="./screenshots/home.png"/></td>
        <td><img src="./screenshots/article-details.png"/></td>
        <td><img src="./screenshots/add-article-form.png"/></td>
    </tr>
</table>

## Stack & Repository Architecture

For the implementation of our demo use case, we use [Flutter](https://flutter.dev/) & [NestJS](https://nestjs.com/).  
In this repo, you'll find the following directories :

- [api](https://github.com/PapiHack/galsen-dev-wec-demo/tree/master/api) folder that contains the `REST API` source code built with [NestJS](https://nestjs.com/).
- [simple_blog_app](https://github.com/PapiHack/galsen-dev-wec-demo/tree/master/simple_blog_app) folder that contains the flutter use case implementation with [Riverpod](https://riverpod.dev/).
- [simple_blog_app_using_bloc_pattern](https://github.com/PapiHack/galsen-dev-wec-demo/tree/master/simple_blog_app_using_bloc_pattern) folder that contains the flutter use case implementation with [BLoC](https://bloclibrary.dev/).
- [slides](https://github.com/PapiHack/galsen-dev-wec-demo/tree/master/slides) folder that contains the presentation slides of our talk.

## Contributing

Feel free to make a PR or report an issue 😃

Oh, one more thing, please do not forget to put a description when you make your PR 🙂

## Authors

- [M.B.C.M](https://itdev.sn)
  [![My Twitter Link](https://img.shields.io/twitter/follow/the_it_dev?style=social)](https://twitter.com/the_it_dev)

- [DEVAL](http://www.deval.website)
  [![My Twitter Link](https://img.shields.io/twitter/follow/alioune_kanoute?style=social)](https://twitter.com/alioune_kanoute)
