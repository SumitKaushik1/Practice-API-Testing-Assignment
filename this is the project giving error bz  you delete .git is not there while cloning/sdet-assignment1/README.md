# SDET Assignment

## Goals
1. Design a test plan based on the API and Database description given. Please be as extensive as possible
2. Build a framework for API testing and implement few test scenarios that you list out in above point

> Note: This application has not been tested for any security or implementation bugs, more the issues found, the better.

## Evaluation
1. Code should be in working condition, a test case report generated would be a plus
2. Update the readme on how to run your test case scenarios

## How to run?
1. Please ensure you have golang installed in your machine / environment. You can follow https://go.dev/doc/install to install golang.
2. Clone this repository to your environment.
3. Run ```go run main.go```
   1. Note: it may take some time on the first run as it will download dependecies.
4. Application starts on PORT 8080

Alternatively, you can download pre-built binary for your platform from [releases](https://github.com/abhishek-pingsafe/sdet-assignment/releases/tag/v0.0.1) page

## API Description

1. POST /api
   1. Headers
      1. "x-session-token":
         1. type: string
         2. accepted value: "authorized-user"
      2. "user-agent"
         1. type: string
         2. invalid values: string containing bot keyword
   2. Body
      1. "id"
         1. type: string
         2. field_type: required
      2. "name"
         1. type: string
         2. field_type: optional
         3. constraint: no special characters allowed, 50 characters max length
      3. "phone_number"
         1. type: string
         2. field_type: required
         3. constraint: 10 characters length

2. GET /api?id=<customer-id>
   1. Headers
      1. "x-session-token":
         1. type: string
         2. accepted value: "authorized-user"
      2. "user-agent"
         1. type: string
         2. invalid values: string containing bot keyword
   2. Query Parameter
      1. id

## Database Model
We are using SQLite DB for this project. Once you run the application, it will create a **_customers.db_** file in the present working directory.

### Tabular Representation

| id (string) | name (string) | phone_number (string) | sms_sent (boolean) |
|-------------|---------------|-----------------------|--------------------|
| 1           | ....          | 1234567890            | 1                  |
| 2           | ....          | 1234567890            | 1                  |

### Column Description
1. id (string): maps directly to id field from request body of API
2. name (string): maps directly to name field from request body of API
3. phone_number (string): maps directly to phone_number field from request body of API
4. sms_sent(boolean): updated asynchronously once sms is sent, can take anywhere between 10-20 seconds to update.
