import React from 'react';
import type { PropsWithChildren } from 'react';
import {
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  TouchableOpacity,
  useColorScheme,
  View,
} from 'react-native';

import {
  Header,
  LearnMoreLinks,
} from 'react-native/Libraries/NewAppScreen';

const backgroundStyle = {
  backgroundColor: 'white',
};

const HomeScreen = (props: any) => {
  const { navigation } = props

  const onPressNavigate = () => {
    navigation.navigate('details')    
  }

  return (
    <ScrollView
      contentInsetAdjustmentBehavior="automatic"
      style={backgroundStyle}>
      <Header />
      <View style={styles.buttonContainer}>
        <TouchableOpacity style={styles.button} onPress={onPressNavigate}>
          <Text style={styles.buttonText}>Go to details(React Native stack screen)</Text>
        </TouchableOpacity>
      </View>
      <View style={{ backgroundColor: 'white', }}>
        <LearnMoreLinks />
      </View>
    </ScrollView>
  )
}

const styles = StyleSheet.create({
  button: { height: 56, borderRadius: 9, borderWidth: 1, backgroundColor: 'black', alignItems: 'center', justifyContent: 'center' },
  buttonContainer: { marginHorizontal: 24 },
  buttonText: { color: 'white', fontWeight: '500', fontSize: 16 }
})


export default HomeScreen