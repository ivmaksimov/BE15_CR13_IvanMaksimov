<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Persistence\ManagerRegistry;

use App\Entity\Events;
use App\Form\EventsType;
use App\Service\FileUploader;

class EventsController extends AbstractController
{
    #[Route('/', name: 'app_events')]
    public function indexAction(ManagerRegistry $doctrine)
    {
        $events = $doctrine
            ->getRepository(Events::class)
            ->findAll();
        return $this->render('events/index.html.twig', array("events" => $events));
    }

    #[Route('/concert', name: 'concert_events')]
    public function concert(ManagerRegistry $doctrine,)
    {
        $events = $doctrine->getRepository(Events::class)->findBy(['type' => 'concert']);
        return $this->render('events/concert.html.twig', array("events" => $events));
    }

    #[Route('/party', name: 'party_events')]
    public function party(ManagerRegistry $doctrine,)
    {
        $events = $doctrine->getRepository(Events::class)->findBy(['type' => 'party']);
        return $this->render('events/party.html.twig', array("events" => $events));
    }

    #[Route('/easter', name: 'easter_events')]
    public function easter(ManagerRegistry $doctrine,)
    {
        $events = $doctrine->getRepository(Events::class)->findBy(['type' => 'easter']);
        return $this->render('events/easter.html.twig', array("events" => $events));
    }

    #[Route('/festival', name: 'festival_events')]
    public function festival(ManagerRegistry $doctrine,)
    {
        $events = $doctrine->getRepository(Events::class)->findBy(['type' => 'festival']);
        return $this->render('events/festival.html.twig', array("events" => $events));
    }



    #[Route('/create', name: 'create_action')]
    public function create(Request $request, ManagerRegistry $doctrine, FileUploader $fileUploader): Response
    {
        $event = new Events();
        $form = $this->createForm(EventsType::class, $event);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $pictureFile = $form->get('picture')->getData();

            if ($pictureFile) {
                $pictureFileName = $fileUploader->upload($pictureFile);
                $event->setPicture($pictureFileName);
            }
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('notice', 'Event Added');

            return $this->redirectToRoute('app_events');
        }


        return $this->render('events/create.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/edit/{id}', name: 'events_edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, $id, FileUploader $fileUploader): Response
    {
        $events = $doctrine->getRepository(Events::class)->find($id);
        $form = $this->createForm(EventsType::class, $events);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $pictureFile = $form->get('picture')->getData();

            if ($pictureFile) {
                $pictureFileName = $fileUploader->upload($pictureFile);
                $events->setPicture($pictureFileName);
            }
            $events = $form->getData();

            $em = $doctrine->getManager();
            $em->persist($events);
            $em->flush();
            $this->addFlash(
                'notice',
                'Event Edited'
            );

            return $this->redirectToRoute('app_events');
        }

        return $this->render('events/edit.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/details/{id}', name: 'events_details')]
    public function details(ManagerRegistry $doctrine, $id): Response
    {
        $events = $doctrine->getRepository(Events::class)->find($id);

        return $this->render('events/details.html.twig', ['events' => $events]);
    }

    #[Route('/delete/{id}', name: 'events_delete')]
    public function deleteDestin($id, ManagerRegistry $doctrine): Response
    {

        $events = $doctrine->getManager()->getRepository(Events::class)->find($id);
        $em = $doctrine->getManager();
        $em->remove($events);

        $em->flush();
        $this->addFlash(
            'notice',
            'The Event is Removed'
        );

        return $this->redirectToRoute('app_events');
    }
}
