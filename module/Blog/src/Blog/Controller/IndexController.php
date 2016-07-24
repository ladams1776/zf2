<?php

namespace Blog\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Blog\Form\Add;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
        return new ViewModel();
    }

    public function addAction()
    {
        $form = new Add();

        if ($this->request->isPost()) {
            $form->setData($this->request->getPost());
            /**
             * @todo Save blog post
             */
        }

        return new ViewModel(array(
            'form' => $form,
        ));
    }
}