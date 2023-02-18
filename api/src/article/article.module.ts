import { Module } from '@nestjs/common';
import { ArticleService } from './article.service';
import { ArticleController } from './article.controller';
import { ArticleRepository } from './article.repository';
import { TypeOrmExModule } from '../config/typeorm-ex.module';

@Module({
  imports: [TypeOrmExModule.forCustomRepository([ArticleRepository])],
  providers: [ArticleService],
  controllers: [ArticleController],
})
export class ArticleModule {}
