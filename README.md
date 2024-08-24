WeatherForcast is a sample ios application which has been made based on MVVM architecture. If you are new in mvvm design pattern then it will be very helpful for you to understand the pattern.  This application is capturing weather update by using https://openweathermap.org api. So before run the application, I request you to visit the following website and take a basic knowledge on it. 

Repository pattern
Repository pattern is a software design pattern that provides an abstraction of data, so that your application can work with a simple abstraction that has an interface. Using this pattern can help achieve loose coupling and can keep domain objects persistence ignorant.
It also makes code more testable as it allows us to inject as a dependency a mock repository that implements that defined interface.
In Tiendeo iOS app, this pattern allows us to abstract the domain layer from the data layer and also, inside data layer, the data repository from its data sources (web API, Realm, User Defaults, etc.).
Let’s see it in a simple scheme:

In domain layer, we define a RepositoryProtocol that allows us to abstract domain layer (business logic) from data layer following the dependency rule as it is recommended in clean architecture.
