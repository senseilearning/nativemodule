import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View, NativeModules } from 'react-native';
//import { MyLog } from './MyLog';

const updateEvents = async () => {

  const MyLog = NativeModules.MyLog;

  console.log("1538")

  try {
    var events = await MyLog.moge("aaa");
    console.log("aaaaa")
    console.log(events)
    console.log("bbbbb")
  } catch (e) {
    console.log("ccccc")
    console.error(e);
  }

  try {
    var events = await MyLog.moge("bbb");
    console.log("ddddd")
    console.log(events)
    console.log("eeeee")
  } catch (e) {
    console.log("fffff")
    console.error(e);
  }
};

export default function App() {

  console.log("1351")

  const MyLog = NativeModules.MyLog;

  MyLog.hoge("bbb")

        MyLog.callFunc(
          'string_param1',
          { foo: 'bar'},
          (error, ret) => {
              if (error) {
                  console.error(error);
              } else {
                  console.log(ret);
              }
          }
      );

  console.log("1352")

  updateEvents()

  console.log("1353")

  return (
    <View style={styles.container}>
      <Text>Open up App.js to start working on your app!</Text>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
