<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ContactForm
 *
 * @ORM\Entity
 * @ORM\Table(name="Contacts")
 */
class Contact
{
    /**
     * @ORM\Column(type="integer", name="contact_id")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $contactId;

    /**
     * @ORM\Column(type="integer", length=1000, name="contact_name")
     */
    private $contactName;

    /**
     * @ORM\Column(type="string", length=100, name="contact_phone")
     */
    private $contactPhone;

    /**
     * @ORM\Column(type="string", length=100, name="contact_email")
     */
    private $contactEmail;

    /**
     * @ORM\Column(type="text", name="message")
     */
    private $message;

    /**
     * @ORM\Column(type="datetime", name="contact_date")
     */
    private $orderDate;

    public function __construct()
    {
        $this->orderDate = new \DateTime();
    }

    /**
     * @return mixed
     */
    public function getContactId()
    {
        return $this->contactId;
    }

    /**
     * @param mixed $contactId
     */
    public function setContactId($contactId)
    {
        $this->contactId = $contactId;
    }

    /**
     * @return mixed
     */
    public function getContactName()
    {
        return $this->contactName;
    }

    /**
     * @param mixed $contactName
     */
    public function setContactName($contactName)
    {
        $this->contactName = $contactName;
    }

    /**
     * @return mixed
     */
    public function getContactPhone()
    {
        return $this->contactPhone;
    }

    /**
     * @param mixed $contactPhone
     */
    public function setContactPhone($contactPhone)
    {
        $this->contactPhone = $contactPhone;
    }

    /**
     * @return mixed
     */
    public function getContactEmail()
    {
        return $this->contactEmail;
    }

    /**
     * @param mixed $contactEmail
     */
    public function setContactEmail($contactEmail)
    {
        $this->contactEmail = $contactEmail;
    }

    /**
     * @return mixed
     */
    public function getMessage()
    {
        return $this->message;
    }

    /**
     * @param mixed $message
     */
    public function setMessage($message)
    {
        $this->message = $message;
    }

    /**
     * @return mixed
     */
    public function getOrderDate()
    {
        return $this->orderDate;
    }

    /**
     * @param mixed $orderDate
     */
    public function setOrderDate($orderDate)
    {
        $this->orderDate = $orderDate;
    }

}

