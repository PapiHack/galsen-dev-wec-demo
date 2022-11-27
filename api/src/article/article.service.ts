import { Injectable } from '@nestjs/common';
import { CreateArticleDTO, UpdateArticleDTO } from './article.dto';
import { ArticleRepository } from './article.repository';

@Injectable()
export class ArticleService {
  constructor(private readonly articleRepository: ArticleRepository) {}

  async getArticles() {
    return this.articleRepository.getAllArticle();
  }

  async getSingleArticle(id: number) {
    return this.articleRepository.getArticleById(id);
  }

  async createArticle(createArticleDTO: CreateArticleDTO) {
    return this.articleRepository.createArticle(createArticleDTO);
  }

  async updateArticle(id: number, updateArticleDTO: UpdateArticleDTO) {
    return this.articleRepository.updateArticle(id, updateArticleDTO);
  }

  async deleteArticle(id: number) {
    return this.articleRepository.deleteArticle(id);
  }
}
