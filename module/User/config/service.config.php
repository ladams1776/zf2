<?php

return [
    'invokables' => array(
        'User\Repository\UserRepository' => 'User\Repository\UserRepositoryImpl',
    ),
    
    'factories' => array(
        'User\InputFilter\AddUser' => function(\Zend\ServiceManager\ServiceLocatorInterface $serviceLocator) {
            return new \User\InputFilter\AddUser($serviceLocator->get('Zend\Db\Adapter\Adapter'));
        },
        
        'User\Service\UserService' => function(\Zend\ServiceManager\ServiceLocatorInterface $serviceLocator) {
            $userService = new \User\Service\UserServiceImpl();
            $userService->setUserRepository($serviceLocator->get('User\Repository\UserRepository'));
            
            return $userService;
        }                
    ),
];

