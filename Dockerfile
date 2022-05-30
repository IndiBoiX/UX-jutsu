FROM ghcr.io/ashwinstr/ux-venom-docker:latest

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# adding email and username to the bot
RUN git config --global user.email "ashwinstr@gmail.com"
RUN git config --global user.name "ashwinstr"

# set timezone 

 ENV TZ=Asia/Kolkata 

  

 





 RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone 

  

 # cloning the repo and installing requirements.

 RUN if [ $BRANCH ]; then git clone -b $BRANCH $REPO $DIR; else git clone 

 RUN pip3 install --no-cache-dir -r $DIR/requirements.txt && pip3 install av --no-binary av

# Okteto CLI 

 RUN curl https://get.okteto.com -sSfL | sh

# command to run on container start
CMD [ "bash", "./run" ]
