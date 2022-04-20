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

we have a list of exercise id'es which is called variations that i need to show them in next page,I have three choose to do that

- make a network call for each variation id
- make one network call and fetch all data and then find the proper objects from it
- show variation id'es in a tableView

## first approach :

pros :
- Get each object and show the name of exercise
- No need to network call in next page

cons:
- Making lots of network call may cause a server crash
- No expandable apporach in big data

second apporach :

pros :
- I have all data in once and I can find my variation from it to show
- No need to network call in next page

cons:
- takes 15 seconds to get all data (419 objects) and user must wait to see the variations
- Not possible in big data's


third apporach :

pros :
- No need to make network call
- proper performance and not getting involve with resources
- No server crash and No boring waiting

cons:

- No proper UI

so based on these pros and cons I've chosen third method

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
