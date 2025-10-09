# Laza App API & Project Overview

This is a Flutter application that uses **Dio** for API communication. It supports user authentication, email verification, and fetching products and categories.  

---

## 🔗 API Endpoints

### 1. Authentication

| Endpoint | Method | Body | Description |
|----------|--------|------|-------------|
| `/auth/signup` | POST | `{ "name": "string", "email": "string", "password": "string" }` | Register a new account |
| `/auth/login` | POST | `{ "email": "string", "password": "string" }` | Login user |
| `/auth/verify-email` | POST | `{ "email": "string", "otp": "string" }` | Verify email using OTP |

### 2. Products

| Endpoint | Method | Body | Description |
|----------|--------|------|-------------|
| `/products` | GET | - | Get list of products |
| `/categories` | GET | - | Get list of categories |

---

## ⚡ Features

- User Sign Up
- User Login
- Email Verification
- Display Products and Categories

---

## 📸 Screen Shots 
<img width="1080" height="2400" alt="Screenshot_1760013908" src="https://github.com/user-attachments/assets/82c74d5c-472f-4fac-9f67-907f69d160f1" />
<img width="1080" height="2400" alt="Screenshot_1760014431" src="https://github.com/user-attachments/assets/71c66bcc-dd67-4716-af9c-afd945b8d993" />
<img width="1080" height="2400" alt="Screenshot_1760013833" src="https://github.com/user-attachments/assets/f92ba69a-aadc-4929-adf4-c89f0cc79ebc" />
<img width="1080" height="2400" alt="Screenshot_1760013831" src="https://github.com/user-attachments/assets/e31c7144-c972-4cc4-aacf-73da5337a4e6" />
<img width="1080" height="2400" alt="Screenshot_1760013820" src="https://github.com/user-attachments/assets/96eff90c-25b2-499c-a353-2907a6721d5f" />



---

## 📂 Clone & Setup

1. Clone the project:

```bash
git clone https://github.com/username/laza_app.git
