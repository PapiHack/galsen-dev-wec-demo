import { NestFactory } from '@nestjs/core';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  const options = new DocumentBuilder()
    .setTitle('GalsenDev WeekEnd Code API')
    .setDescription(
      'A simple REST API built with NestJS during the GalsenDev WeekEnd Code event for managing articles 😎',
    )
    .setContact('PapiHack', 'https://github.com/PapiHack', 'itdev94@gmail.com')
    .setVersion('1.0')
    .build();

  const document = SwaggerModule.createDocument(app, options);
  SwaggerModule.setup('api/docs', app, document);

  await app.listen(3000);
}
bootstrap();
