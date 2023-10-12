#  Dynamic Muscle Intensity Log

This is a Swift app designed for logging workouts and extracting accurate 
muscle group data to ensure that users are not overtraining
or undertraining any specific muscle groups.

# Build
Initiate app in XCode or IDE that supports connection to iOS devices.
Connect iOS device to computer, select device, and build.

# Features
Users first register muscle groups that they would like to keep track of
during their workouts (chest, legs, back, etc.). Users can set their goals based
on the minimum and maximum number of sets they would like to perform per muscle group
per week.

### Register Muscle Groups
<img src="/PerfectVolume/Demo/RegisterGroup.png" width="200px" height="400px">
<img src="/PerfectVolume/Demo/DefaultMuscles.png" width="200px" height="400px">
Since we just created the muscle groups, they appear as 0 / MAXIMUM GOAL

### Log Daily Workouts
Now, users can keep track of their daily workouts. Simply create a new log from the home view
and enter exercise details with muscle group.

<img src="/PerfectVolume/Demo/LogExample.png" width="200px" height="400px">
<img src="/PerfectVolume/Demo/ExerciseDetail.png" width="200px" height="400px">

### Auto-Incrementation
Now that the user has entered their weekly workout info. The app will
auto-increment the number of sets worked per muscle group on the home view.
The user's goal should to be always in the range between their minimum set
goal and their maximum set goal (that they previously assigned themselves).

The app will actively track the number of working sets on a 7-day basis with
rollover. That means, that the app is not tracking from Monday-Sunday, but rather
Monday-Sunday, Tuesday-Monday, Wednesday-Tuesday, etc. This allows a flexible tracking
system where the user does not need to stick to a rigid Monday-Chest, Tuesday-Back, 
Wednesday-Legs, etc. schedule as long as they are within the bounds of their goals.
Thus, the app's main job is to prevent both over and undertraining. 

The app reflects the user's progress of staying within these bounds through colors:

Red: No muscle stimulation done in the past 7 days

Yellow: Some muscle stimulation done in the past 7 days

Green: The right amount of muscle stimulation in the past 7 days

Purple: Too much muscle stimulation in the past 7 days

### Muscle Progress Example
<img src="/PerfectVolume/Demo/MuscleGroups.png" width="200px" height="400px">

### Auto-Decrementation
After 7 days have passed since a user's workout, the app will auto-decrement
each muscle group that was involved in that workout by the appropriate amount.
Thus, the user's muscle data from the past 7 days will always be consistent,
for any workout from more than 7 days ago will become irrelevant.

### Editing Workouts
There is also plenty of functionality for editing past workouts, muscle groups,
weekly goals, and exercise details. Simply, swipe left on any log that you would
like to delete and select 'Delete'. 

<img src="/PerfectVolume/Demo/AllLogs.png" width="200px" height="400px">


# How Data is Stored
This app uses iOS Core Data to locally save info to devices. This app does not require
much storage and can be accessed offline.





