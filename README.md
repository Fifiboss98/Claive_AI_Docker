# Claive AI for Windows Users 🤖  

If you run this command and get:
```plaintext
$ python secret_ai_getting_started.py
ModuleNotFoundError: No module named 'secret_ai_sdk'

it probably means that your Windows system lacks a particular package called "pkg-config".

There are many solutions to this problem but the easiest one in my opinion is to run the bot inside a Docker container.
---

## 📋 How to?
- First of all, make sure to have Docker installed and running.


- Copy the Dockerfile and the docker-compose.yml files into your working directory.


-  Open a terminal at the location and run this command:
```plaintext
$ docker-compose up --build -d

This will build the image and the "-d" will spin up the container as a daemon (basically it will be running in the background).
Please note that this command require some time to complete.
Also make sure that you have a reliable internet connection.


- Upon successful completion, run this command to interact with the container:
```plaintext
$ docker-compose exec chat bash

```plaintext
# python secret_ai_getting_started.py

By default, Docker will stop the container after printing the bot response.
To prevent that behaviour you can replace the modified version of the secret_ai_getting_started.py file in your working directory.
Then you can chat with the bot directly in the terminal.

---

If you encounter any issue during the process, feel free to ask in the Secret Community group on Telegram.