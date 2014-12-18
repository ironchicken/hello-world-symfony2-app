<?php

namespace Gajdaw\BDDTutorial\GeographyBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Gajdaw\BDDTutorial\GeographyBundle\Entity\Cave;
use Gajdaw\BDDTutorial\GeographyBundle\Form\CaveType;

/**
 * Cave controller.
 *
 * @Route("/cave")
 */
class CaveController extends Controller
{

    /**
     * Lists all Cave entities.
     *
     * @Route("/", name="cave")
     * @Method("GET")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('GajdawBDDTutorialGeographyBundle:Cave')->findAll();

        return array(
            'entities' => $entities,
        );
    }
    /**
     * Creates a new Cave entity.
     *
     * @Route("/", name="cave_create")
     * @Method("POST")
     * @Template("GajdawBDDTutorialGeographyBundle:Cave:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity = new Cave();
        $form = $this->createCreateForm($entity);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('cave_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Creates a form to create a Cave entity.
     *
     * @param Cave $entity The entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createCreateForm(Cave $entity)
    {
        $form = $this->createForm(new CaveType(), $entity, array(
            'action' => $this->generateUrl('cave_create'),
            'method' => 'POST',
        ));

        $form->add('submit', 'submit', array('label' => 'Create'));

        return $form;
    }

    /**
     * Displays a form to create a new Cave entity.
     *
     * @Route("/new", name="cave_new")
     * @Method("GET")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Cave();
        $form   = $this->createCreateForm($entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Finds and displays a Cave entity.
     *
     * @Route("/{id}", name="cave_show")
     * @Method("GET")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('GajdawBDDTutorialGeographyBundle:Cave')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Cave entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to edit an existing Cave entity.
     *
     * @Route("/{id}/edit", name="cave_edit")
     * @Method("GET")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('GajdawBDDTutorialGeographyBundle:Cave')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Cave entity.');
        }

        $editForm = $this->createEditForm($entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
    * Creates a form to edit a Cave entity.
    *
    * @param Cave $entity The entity
    *
    * @return \Symfony\Component\Form\Form The form
    */
    private function createEditForm(Cave $entity)
    {
        $form = $this->createForm(new CaveType(), $entity, array(
            'action' => $this->generateUrl('cave_update', array('id' => $entity->getId())),
            'method' => 'PUT',
        ));

        $form->add('submit', 'submit', array('label' => 'Update'));

        return $form;
    }
    /**
     * Edits an existing Cave entity.
     *
     * @Route("/{id}", name="cave_update")
     * @Method("PUT")
     * @Template("GajdawBDDTutorialGeographyBundle:Cave:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('GajdawBDDTutorialGeographyBundle:Cave')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Cave entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createEditForm($entity);
        $editForm->handleRequest($request);

        if ($editForm->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('cave_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }
    /**
     * Deletes a Cave entity.
     *
     * @Route("/{id}", name="cave_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('GajdawBDDTutorialGeographyBundle:Cave')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Cave entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('cave'));
    }

    /**
     * Creates a form to delete a Cave entity by id.
     *
     * @param mixed $id The entity id
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm($id)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cave_delete', array('id' => $id)))
            ->setMethod('DELETE')
            ->add('submit', 'submit', array('label' => 'Delete'))
            ->getForm()
        ;
    }
}
