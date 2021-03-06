<?php
namespace Blog\Repository;

use Application\Repository\RepositoryInterface;
use Blog\Entity\Post;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PostRepository
 *
 * @author ladams
 */
interface PostRepository extends RepositoryInterface
{
    /**
     * Saves a blog post.
     *
     * @param Post $post
     *
     * @reutrn void
     */
    public function save(Post $post);
    /**
     *
     * @param int $page.
     * @return \Zend\Paginator\Paginator
     */
    public function fetch($page);

    /**
     *
     * @param type $categorySlug
     * @param type $postSlug
     * @return mixed
     */
    public function find($categorySlug, $postSlug);
    /**
     * Grab a specific post via an ID
     * @param int $postId
     * @return null|Post
     */
    public function findById($postId);
    /**
     *
     * @param Post $post
     * @return void|null
     */
    public function update(Post $post);
    /**
     *
     * @param Post $post
     */
    public function delete(Post $post);

}
