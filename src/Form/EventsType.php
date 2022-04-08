<?php

namespace App\Form;

use App\Entity\Events;


use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;


class EventsType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options): void
  {
    $builder
      ->add('name', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('date', DateType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('time', TimeType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('description', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('capacity', NumberType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('email', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('phone', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('address', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('zip', NumberType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('city', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('url', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('type', TextType::class, [
        'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
      ])
      ->add('picture', FileType::class, [
        'label' => 'Upload Picture',

        'mapped' => false,

        'required' => false,


        'constraints' => [
          new File([
            'maxSize' => '5024k',
            'mimeTypes' => [
              'image/png',
              'image/jpeg',
              'image/jpg',
            ],
            'mimeTypesMessage' => 'Please upload a valid image file',
          ])
        ],
      ])
      ->add('save', SubmitType::class, [
        'label' => 'Done',
        'attr' => ['class' => 'btn-primary', 'style' => 'margin-bottom:15px']

      ]);
  }

  public function configureOptions(OptionsResolver $resolver): void
  {
    $resolver->setDefaults([
      'data_class' => Events::class,
    ]);
  }
}
