<?php

namespace User\Controller;

use User\Entity\User;
use User\Form\Add;
use User\Service\UserService;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\ServiceManager\ServiceManager;
use Zend\View\Model\ViewModel;

/**
 * It's the IndexController - w/e that is.
 *
 * @author ladams
 */
class IndexController extends AbstractActionController
{
    
    /**
     *
     * @var ServiceManager $serviceManager
     */
    protected $serviceManager;
    
    /**
     * 
     * @return ServiceManager
     */
    protected function getServiceManager()
    {
        return $this->serviceManager;
    }
    
    /**
     * 
     * @param ServiceManager $serviceManager
     */
    protected function setServiceManager(ServiceManager $serviceManager) 
    {
        $this->serviceManager = $serviceManager;
    }

        
    /**
     *
     * @param ServiceManager $serviceManager
     */
    public function __construct(ServiceManager $serviceManager)
    {
        $this->setServiceManager($serviceManager);
    }

    public function indexAction()
    {
        //@TODO stopped here.
        //$dbAdapter = $serviceManager->get('Zend');


        return new ViewModel();
    }
    
    public function addAction() 
    {
        $form = new Add();
        
        if ($this->request->isPost()) {
            $user = new User();
            
            $form->bind($user);
            $form->setInputFilter($this->getServiceManager()->get('User\InputFilter\AddUser'));
            $form->setData($this->request->getPost());
            
            if ($form->isValid()) {
                $user->setUserGroup(UserService::GROUP_REGULAR);
                $this->getUserService()->add($user);
                $this->flashMessenger()->addSuccessMessage('The user has been added!');
            }
        }
        
        return new ViewModel(array(
            'form' => $form,
        ));
    }
    
    /**
     * 
     * @return UserService
     */
    protected function getUserService()
    {
        return $this->getServiceManager()->get('User\Service\UserService');
    }
    
}
