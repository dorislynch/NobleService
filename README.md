
# react-native-noble-service

## Getting started

`$ npm install react-native-noble-service --save`

### Mostly automatic installation

`$ react-native link react-native-noble-service`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-noble-service` and add `RNNobleService.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNNobleService.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNNobleServicePackage;` to the imports at the top of the file
  - Add `new RNNobleServicePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-noble-service'
  	project(':react-native-noble-service').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-noble-service/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-noble-service')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNNobleService.sln` in `node_modules/react-native-noble-service/windows/RNNobleService.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Noble.Service.RNNobleService;` to the usings at the top of the file
  - Add `new RNNobleServicePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNNobleService from 'react-native-noble-service';

// TODO: What to do with the module?
RNNobleService;
```
  