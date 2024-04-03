# Restaurant Booking Application

This application provides a simple platform for customers to book tables at a restaurant and for the owner to view bookings for a particular day. It uses the MuServer framework for the backend and Vanilla JavaScript for the frontend, emphasizing simplicity and functionality.

![Restaurant Booking App](IMAGE_URL)

## How to run

``` bash
# [LOCAL DEV](http://localhost:3000?)
wget -O setup.sh https://kibsaimmejia.github.io/Programs/RestaurantBooking/setup.sh
chmod +x setup.sh
./setup.sh
```

## How to build

- Java 17
- Maven
- Docker & Docker Compose
- Node.js and npm (for Cypress e2e tests)

### Backend Setup

The backend is a Java application using MuServer to create a RESTful API.

#### Directory Structure

- `./backend/src/main/java/`: Java source files
- `./backend/pom.xml`: Maven project file

#### Build and Run

Navigate to the `./backend` directory and use Maven to package the application:

``` bash
mvn package
```

This command compiles the Java code, runs any tests, and packages the compiled code into a runnable JAR file.

### Frontend Setup

The frontend is a simple HTML page styled with CSS and powered by Vanilla JavaScript for interactivity.

#### Directory Structure

- `./frontend/index.html`: Main HTML file
- `./frontend/styles.css`: CSS file (optional, for additional styling)
- `./frontend/script.js`: JavaScript file (if you have separated JS code from HTML)

#### Serving the Frontend

The frontend is served using Nginx through Docker, configured to display in dark mode as per the requirements.

### E2E Testing with Cypress

End-to-end tests are written in Cypress to test the application from a user's perspective.

#### Directory Structure

- `./e2e/cypress/integration/`: Cypress test files
- `./e2e/package.json`: npm package file for Cypress dependencies

#### Running Tests

Ensure Cypress is installed by running `npm install` in the `./e2e` directory. Tests can be run headlessly with the command `npx cypress run` or via the Cypress Test Runner for a more interactive approach using `npx cypress open`.

### Docker Compose

A `docker-compose.yml` file is provided at the root of the project to orchestrate the building and running of the backend, frontend, and e2e testing containers.

### Running the Application

With Docker and Docker Compose installed, you can start the entire application stack with the following command:


``` bash
docker-compose up --build
```

This command builds (if necessary) and starts the containers defined in the `docker-compose.yml` file. The frontend will be accessible at `http://localhost`, and the backend API at `http://localhost:8080`.

## Development and Testing

### Backend

- **Main Class**: Update the `pom.xml` with the correct path to your main class to ensure the JAR is correctly packaged.

### Frontend

- **Dark Mode**: Ensure your CSS is styled for dark mode. The `index.html` provided uses in-line styles for simplicity.

### E2E Testing

- **Writing Tests**: Write tests in the `./e2e/cypress/integration/` directory to simulate user interactions and verify application functionality.

## Conclusion

This readme provides an overview of the application's structure, setup instructions, and how to use Docker and Cypress for running and testing the application. Ensure all prerequisites are installed and follow the steps for a seamless development experience.
