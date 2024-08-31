# Use Python as the base image
FROM python:latest

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY book_catalog/requirements.txt .

# Install the required packages
RUN pip install -r requirements.txt

# Copy the application code
COPY book_catalog/ .

# Set environment variables for DB
ENV DATABASE_URL="postgresql://task2db_tqyn_user:cEyU4VAPq8uGpxjl9R6dCJLFnIhhHHs5@dpg-cr7bseij1k6c739os3cg-a.singapore-postgres.render.com/task2db_tqyn"

# Run the application with port 4000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4000"]