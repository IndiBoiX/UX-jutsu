FROM ghcr.io/ashwinstr/ux-venom-docker:latest

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# adding email and username to the bot
RUN git config --global user.email "ashwinstr@gmail.com"
RUN git config --global user.name "ashwinstr"

# set timezone 



  









 

 # cloning the repo and installing requirements.

 



# Okteto CLI 

 RUN curl https://get.okteto.com -sSfL | sh

# command to run on container start
CMD [ "bash", "./run" ]
