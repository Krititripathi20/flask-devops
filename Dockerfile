#USe an official Python image as the base
FROM python:3.9
#Set the working directory inside the container
WORKDIR /app
#Copy the application files from your system into the container
COPY . .
#Install Flask (any any other dependencies)
RUN pip install Flask
#Expose port 5000 so that app can be accessed
EXPOSE 5000
#Command to run the application when the container starts
CMD ["python" , "app.py"]