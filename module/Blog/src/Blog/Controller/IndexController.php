<?php

namespace Blog\Controller;

use Blog\Entity\Post;
use Blog\Form\Add;
use Blog\InputFilter\AddPost;
use Blog\Service\BlogService;
use Zend\Http\Response;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class IndexController extends AbstractActionController
{

    /**
     *
     * @return BlogService
     */
    protected function getBlogService()
    {
        return $this->getServiceLocator()->get('Blog\Service\BlogService');
    }


    public function indexAction()
    {
        $variables = [];
        /**
         * @var BlogService
         */
        $blogService = $this->getBlogService();
        $page = $this->params()->fromRoute('page'); // grab the :page url parameter.
        $variables['paginator'] = $blogService->fetch($page);

        return new ViewModel($variables);
    }
    /**
     * Add a new Post.
     * @return ViewModel
     */
    public function addAction()
    {
        $form = new Add();
        $variables = array('form' => $form);

        if ($this->request->isPost()) {
            $blogPost = new Post();
            $form->bind($blogPost);
            $form->setInputFilter(new AddPost()); //Add the input filter when the form is submitted.
            $form->setData($this->request->getPost());

            if ($form->isValid()) {
                /**
                 * @var BlogService $blogService
                 */
                $blogService = $this->getBlogService();
                $blogService->save($blogPost);
                $variables['success'] = true;
            }
        }

        return new ViewModel($variables);
    }




    public function viewPostAction()
    {
        $categorySlug = $this->params()->fromRoute('categorySlug');
        $postSlug = $this->params()->fromRoute('postSlug');
        $post = $this->getBlogService()->find($categorySlug, $postSlug);

        if ($post == null) {
            $this->getResponse()->setStatusCode(Response::STATUS_CODE_404);
        }

        return new ViewModel(array(
            'post' => $post,
        ));

    }



    public function edit()
    {
        $form = new Edit();

        if ($this->request->isPost) {
            $post = new Post();
            $form->bind($post);
            $form->setData($this->request->getPost());

            if ($form->isValid()) {
                $blogService = $this->getBlogService();
                $blogService->update($post);
                $this->flashMessenger()->addSuccessMessage('Post has been updated!');
            } else {
                $post = $this->getBlogService()->findById($this->params()->fromRoute('postId'));

                if ($post == null) {
                    $this->getResponse()->setStatusCode(Response::STATUS_CODE_404);
                } else {
                    $form->bind($post); // populate the form with the post.
                    
                }
            }

        }
    }

}