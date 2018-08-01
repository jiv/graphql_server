brian = Instructor.create(name: 'Brian Morearty')
samer = Instructor.create(name: 'Samer Buna')

Course.create(instructor: brian, title: 'Rails 4.1 Performance Fundamentals', slug: 'Speed up your Ruby on Rails 4.1 (and 4.0 and 3.2) applications. This course covers profiling techniques; making fewer, faster, database queries; Russian Doll caching; Turbolinks and more.')
Course.create(instructor: samer, title: 'Ruby on Rails 4: Getting Started', slug: 'Rails is an open-source web framework that\'s optimized for programmer happiness and sustainable productivity. This course covers all the basics of Ruby on Rails and prepares you to start developing web applications on the platform.')
Course.create(instructor: samer, title: 'React.js on Rails: Building a Full Stack Web App', slug: 'Learn to build a web application with React and Flux on the frontend, Rails as your API backend server, and tools like Webpack and Bable.js for ES6.')
