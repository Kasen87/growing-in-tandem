# Growing in Tandem

### What's the job we're solving for?
At [Tandem](https://madeintandem.com/), we are serious about everyone's growth, including that of our plants. Whether you are walking around upstairs or downstairs at the office, you will find our green friends happily growing like the rest of us. There are quite a few Tandelorians who will walk around the office and water the plants to ensure they are healthy.

However, we have quite a big plant family, and it is hard to manually keep track of when to water any particular plant. 

We don't want our plants to ever miss out on a watering!

* * *

### What do we want at the end?
Your goal is to create an application that generates a watering schedule for the next 12 weeks for all of our plants.

Use creative license in terms of how you want us to see this schedule. At minimum, the plant caretaker looking at the schedule should be able to easily identify which plants to water on a particular date. It could be a user interface (UI), command-line tool, written to file, etc.

We would also like to see a README which includes any information about how to run the code, any known issues or complexity we should look out for, and any additional features you would like to have added to make your scheduler even more awesome.
Before you begin, familiarity with the following concepts will be helpful:

- Arrays and loops
- Date manipulation
- Parsing JSON

* * *

### What are the assumptions we can make?
- We do not water our plants on a weekend. 
  - _Work-life balance is important, and we shouldn't be in the office on a weekend._
- Our plants are reasonably tolerant and will still be happy if they are watered a day before or after the day they should be watered.
- Watering an individual plant takes no time at all so you don't have to worry about how many plants can be watered in a particular day.
- The scheduling should start from next Monday and last for 12 weeks.
- All plants will be watered on the first day of the schedule (next Monday).
- You can assume that we know exactly when to water these specific plants.
  - _We recognize that when to water a plant is heavily dependent on other factors such as soil, weather, humidity, etc._
- You have been provided a JSON file which contains data for our plants.

* * *

### What's the feature-set for our minimum viable product?
- The user can view which plant(s) to water on which date(s).
- The schedule covers the next 12 weeks starting next Monday.
- No plants are watered on Saturdays or Sundays.
- Each plant is watered on its desired schedule or as close as possible, taking into account weekends.

* * *

### What other considerations should we take into account?
Tandem's first core value is "Ship Quality Work." We love [unit tests and automated test coverage](https://madeintandem.com/blog/five-factor-testing/) in our projects. 

Well-tested code provides documentation for other developers and prevents future regressions (bugs introduced after a change) among other things. 

If you would like a challenge, consider adding unit tests to display your commitment to quality code.