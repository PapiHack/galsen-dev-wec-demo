import { NotFoundException } from '@nestjs/common';
import { CustomRepository } from 'src/config/typeorm-ex.decorator';
import { Repository } from 'typeorm';
import { CreateArticleDTO, UpdateArticleDTO } from './article.dto';
import { Article } from './article.entity';

@CustomRepository(Article)
export class ArticleRepository extends Repository<Article> {
  async getAllArticle() {
    return await this.find();
  }

  async createArticle(createArticleDTO: CreateArticleDTO) {
    const article = new Article();
    const { title, content, author } = createArticleDTO;
    article.title = title;
    article.content = content;
    article.author = author;
    article.createdAt = new Date();
    article.updatedAt = new Date();
    return await article.save();
  }

  async updateArticle(id: number, updateArticleDTO: UpdateArticleDTO) {
    const article = await this.getArticleById(id);
    const { title, content, author } = updateArticleDTO;
    article.title = title;
    article.content = content;
    article.author = author;
    article.updatedAt = new Date();
    return await article.save();
  }

  async deleteArticle(id: number) {
    const article = await this.getArticleById(id);
    await this.delete({ id: article.id });
    return id;
  }

  async getArticleById(id: number) {
    const article = await this.findOne({ where: { id } });
    if (!article) {
      throw new NotFoundException(`Article with id #${id} not found!`);
    }
    return article;
  }
}
