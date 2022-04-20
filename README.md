<img src="https://img.shields.io/github/issues/M0TRIX/Gymono"> <img src="https://img.shields.io/github/forks/M0TRIX/Gymono"> <img src="https://img.shields.io/github/stars/M0TRIX/Gymono"> <img src="https://img.shields.io/github/license/M0TRIX/Gymono">

# HomeTask
home task for Gymono App

> using swift 5.0
> xcode 13.2
> MVVM

- clone the repo
``` git clone https://github.com/M0TRIX/Gymono.git ```

- ``` pod install ```

- choose iphone 8 and run the project
> you see list of Exercises with own pictures nor placeholder

<img src="https://github.com/M0TRIX/Gymono/blob/main/Gymono1.png">

by clicking at arrow at the bottom of each cell you can see the details

<img src="https://github.com/M0TRIX/Gymono/blob/main/gymono2.png">

we have a list of exercise id'es which is called variations that i need to show them in next page,I have two choose to do that

- make a network call for each variation id
- make one network call and fetch all data and then find the proper objects from it

I chosed second method because making a lot of network request causes server crash.

pros and cons of fisst method :

pros:

-Not using server resources

cons :

- takes time to get all data and find variations from it,you need to wait to see the result

# Suggestion

we need to create an endpoint that takes list of variation id'es and returns a list of exercises

# Tests

check the unit tests from GymonoTest directory
check the UI tests from GymonoUITest directory

# Contact

Ali Asadi  asadi.0241@gmail.com

# Licence

Copyright [2022] Ali Asadi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
