FROM python:3.5
RUN pip install Flask==0.11.1 redis==3.2.0
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 
