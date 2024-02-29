/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import React from 'react';

import HomeScreen from './HomeScreen';
import DetailsScreen from './DetailsScreen';

const RootStack = createNativeStackNavigator()


function App(): JSX.Element {
  return (
    <NavigationContainer>
      <RootStack.Navigator initialRouteName='main'>
        <RootStack.Screen name="main" component={HomeScreen} options={{headerShown: false}} />
        <RootStack.Screen name="details" component={DetailsScreen}/>
      </RootStack.Navigator>
    </NavigationContainer>    
  );
}

export default App;
