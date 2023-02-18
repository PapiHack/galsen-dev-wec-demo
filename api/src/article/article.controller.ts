import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  ValidationPipe,
} from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { CreateArticleDTO, UpdateArticleDTO } from './article.dto';
import { ArticleService } from './article.service';

@Controller({
  path: 'api/v1/articles',
  version: '1',
})
@ApiTags('articles')
export class ArticleController {
  constructor(private readonly articleService: ArticleService) {}

  @Get()
  async getArticles() {
    return this.articleService.getArticles();
  }

  @Get(':id')
  async getArticle(@Param('id', ParseIntPipe) id: number) {
    return this.articleService.getSingleArticle(id);
  }

  @Post()
  async createArticle(
    @Body(ValidationPipe) createArticleDTO: CreateArticleDTO,
  ) {
    return this.articleService.createArticle(createArticleDTO);
  }

  @Put(':id')
  async updateArticle(
    @Param('id', ParseIntPipe) id: number,
    @Body(ValidationPipe) updateArticleDTO: UpdateArticleDTO,
  ) {
    return this.articleService.updateArticle(id, updateArticleDTO);
  }

  @Delete(':id')
  async deleteArticle(@Param('id', ParseIntPipe) id: number) {
    return this.articleService.deleteArticle(id);
  }
}
