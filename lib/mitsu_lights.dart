import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:light_auto_mitsubishi/1.dart/';

class Warning_LightsPage extends StatefulWidget {
  const Warning_LightsPage({super.key, required this.title});
  final String title;

  @override
  _Warning_LightsPageState createState() => _Warning_LightsPageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light Auto Mitsubishi',
      theme: ThemeData(

      ),
      home: const Warning_LightsPage(title: 'Light Auto Mitsubishi'),
    );
  }
}

class _Warning_LightsPageState extends State<Warning_LightsPage> {

  List<Container> warningLights = [];
  var lights=[
    {"Name":"Oil Pressure","Picture":"OilPressure.png",
      "Data":"Definition: This archaic oil can emblem denotes a problem with the oil pressure system in your car."
          " Either you don't have enough oil in your tank, or your oil pump isn't pumping out enough oil to adequately"
          " lubricate the engine's surfaces. (NOTE: Instead of this symbol, certain car dashboards will show the word OIL).\n"
          "                                                                                                                          "
          "What to do: This is a crucial warning to heed because inadequate engine lubrication might result in serious engine damage."
          " As soon as it's safe to do so, stop, turn off the car, and check the oil! Pull off the oil dipstick to check the fluid "
          "level after searching the engine room for any evident oil leaks.\n"
          "                                                                                                                          "
          " When you add oil, the light can turn off if the oil level is low. If the engine is running noisy yet there is enough "
          "oil in the tank, there may be a problem with the oil pump. Your oil pressure sensor may not be working properly if the "
          "oil level is normal and the engine is operating without any issues. In any case, you should bring your car in right away"
          " to have a professional examine it over and fix whatever is causing the low oil or low oil pressure."},

    {"Name":"Tire Pressure","Picture":"TirePressure.png",
      "Data":"Definition: This symbol, also referred to as the Tire Pressure Monitoring System (TPMS) symbol, denotes a "
          "problem with either your tire pressure or the TPMS.\n"
          "                                                                                                                          "
          "The pressure in one or more of your tires is either too low or too high if the TPMS symbol is solid. Even though "
          "your tires are correctly filled, if the TPMS symbol flashes for 60 to 90 seconds when you turn on your car before "
          "remaining illuminated, there is a problem with your TPMS sensors.\n"
          "                                                                                                                          "
          "What to do: Driving with low or high tire pressure is dangerous and can harm your tires. We advise making a quick "
          "stop to fill or deflate your tires to the appropriate pressure.\n"},

    {"Name":"Engine Temperature","Picture":"ET.png",
      "Data":"Definition:The appearance of this indicator indicates that your engine is overheating. Although there are several"
          " potential causes, your coolant, also known as antifreeze, is most likely to blame.\n"
          "                                                                                                                          "
          "What to do: To redistribute heat in the passenger compartment, consider first turning off the air conditioning and"
          " turning on the heater. After a few minutes, if it still doesn't work, stop as soon as it is safe to do so and turn"
          " off the engine. Don't open the hood and give the engine at least 15 minutes to cool. While the engine is still hot,"
          " opening the hood could result in burns or other damage from steam or smoke.\n"
          "                                                                                                                          "
          "Make a strategy for what to do next while you wait for the automobile to cool down. Call a roadside assistance"
          " company now to top off your coolant or arrange for a tow to a local repair facility.\n"},

    {"Name":"Traction Control ","Picture":"TC.png",
      "Data":"Definition: This car icon means that the traction control system of your car is engaged. Your anti-lock brake"
          " system (ABS) is used by the traction control system to detect whether one wheel is turning more quickly than the"
          " others. It applies the brakes until the vehicle regains traction if it notices that a wheel is slipping. "
          "This is especially useful if you're driving through snow or puddles.\n"
          "                                                                                                                          "
          "What to do: Keep driving, but be cautious of the slick road conditions.\n "
          "                                                                                                                          "
          },

    {"Name":"ABS","Picture":"ABS.png",
      "Data":"Definition: The ABS pulses the brakes when you apply heavy pressure to them, as it would on slick roads,"
          " to keep your wheels from locking up. When the ABS warning light goes on, the vehicle's mechanical components"
          " are malfunctioning.\n"
          "                                                                                                                          "
          "What to do: Because this is such a crucial safety element, it's crucial to get the problem diagnosed by a"
          " mechanic as quickly as possible.\n"
          "                                                                                                                          "
          },

    {"Name":"Traction Control Malfunction","Picture":"TCM.png",
      "Data":"Definition: This warning light suggests that there may be a problem with the traction control system in"
          " your car, such as a sensor that is damaged or malfunctioning.  This dashboard light may occasionally illuminate"
          " when there are issues with your ABS since in some automobiles the same control module controls both the traction"
          " control and ABS systems.\n"
        "                                                                                                                          "
        "What to do: Even though this won't impede your daily driving, you should have it examined soon to ensure that "
          "your car will run safely in bad weather.\n"
        "                                                                                                            "
    },

    {"Name":"Check Engine","Picture":"CE.png",
    "Data":"Definition: There are many potential causes for your check engine light to come on. An open, slack, or broken "
        "gas cap can occasionally cause it by allowing fuel to evaporate. However, occasionally it denotes a significant"
        " problem, such as low oil pressure or overheating. (NOTE: Instead of this indicator, some car dashboards would"
        " say CHECK ENGINE).\n"
    "                                                                                                                          "
    "What to do: Drive a moderate distance if you haven't noticed a change in how the car drives or if you've detected"
        " any weird sounds or smells.\n"
    "                                                                                                            "
        " If the check engine light is blinking or is red, you should immediately pull over! A flashing check engine light "
        "often indicates that you have a serious issue that, if ignored, might seriously harm your engine.In any scenario, "
        "be careful to get the light inspected and the issue fixed as soon as you can.\n"
        "                                                                                                            "
        "If the check engine light is blinking or is red, you should immediately pull over! A flashing check engine light"
        " often indicates that you have a serious issue that, if ignored, might seriously harm your engine. In any scenario,"
        " be careful to get the light inspected and the issue fixed as soon as you can.\n"
    },

    {"Name":"Battery","Picture":"Bat.png",
      "Data":"Definition: This light indicates that there is a problem with the charging system of the car. "
          "A faulty alternator, a loose or damaged battery cable, or another electrical issue are potential offenders."
          " You might notice your headlights dimming or the light on your clock fading. Or, in extreme circumstances,"
          " your automobile might not even turn on.\n"
          "                                                                                                                          "
          "What to do: We offer America's No. 1 battery replacement—Interstate Batteries—if you require a new battery,"
          " and our specialists can assist in the diagnosis of any electrical or battery-related problems. Don't put "
          "off getting it looked at too long; else, you might need to jumpstart your vehicle to bring it to the shop.\n"
          "                                                                                                            "
    },

    {"Name":"Low Fuel","Picture":"LF.png",
      "Data":"Definition: This dashboard light is probably familiar to you. It merely indicates that there is "
          "not enough gasoline in your car.\n"
          "                                                                                                                          "
          "What to do: Don't push your luck if you still have a ways to go! It's advisable to stop at the closest"
          " gas station and fill up because you never know how the weather or traffic patterns may pan out.\n"
          "                                                                                                            "
          "Tip: On the fuel gauge adjacent to the gas pump icon, most cars feature a triangle-shaped arrow. "
          "The direction of this arrow shows which side of the car the fuel tank is on.\n"
    },

    {"Name":"Automatic Shift Lock","Picture":"ASL.png",
      "Data":"Definition: If you notice this dashboard icon, you're probably trying to start your ignition "
          "or change gears without applying the brake. Until you press the brake, the automatic shift lock"
          " will keep your car in park or neutral.\n"
          "                                                                                                                          "
          "What to do: Depress the brake pedal, then select a gear, or turn on the ignition, as desired."
          "                                                                                                            "
    },

    {"Name":"Seat Belt","Picture":"SB.png",
      "Data":"Definition: Simply put, this car light serves as a reminder for you and your passenger to "
          "buckle up. It frequently comes with a constant dinging sound.\n"
          "                                                                                                                          "
          "What to do: Put your seatbelt on! The CDC estimates that seat belt use reduces the risk of"
          " major crash-related injuries by around 50%.\n"
          "                                                                                                            "
    },

    {"Name":"Airbag Indicator","Picture":"AI.png",
      "Data":"Definition: The airbag warning light indicates that either one of your airbags "
          "or the complete airbag system is malfunctioning.\n"
          "                                                                                                                          "
          "What to do: Have your car inspected as soon as possible! It's crucial to verify sure "
          "your car's airbags are functioning correctly since they protect you during collisions.\n"
          "                                                                                                            "
    },

    {"Name":"Security Indicator","Picture":"SI.png",
      "Data":"Definition: This indicator will blink continuously if your car has an anti-theft"
          " system when the security system is activated. If it is solid and the car won't start, "
          "a security threat or system flaw has caused the immobilization system to activate. "
          "If it is solid and the automobile is operating normally, the security system needs to be "
          "fixed because it isn't working properly.\n"
          "                                                                                                                          "
          "What to do: Follow the instructions on your vehicle to deactivate the security system if "
          "the car is immobilized. If there is a problem, you must have it fixed before your security"
          " system can function properly.\n"
          "                                                                                                            "
    },

    {"Name":"Fog Lamp Indicator","Picture":"FLI.png",
      "Data":"Definition: When you see this symbol, your fog lights are on.\n"
          "                                                                                                                          "
          "What to do: Only use fog lights if your visibility is no more than 100 yards. "
          "They can make it harder for other road users to see if you turn them on needlessly.\n"
          "                                                                                                            "
    },

    {"Name":"Washer Fluid Indicator","Picture":"WFI.png",
      "Data":"Definition: This dashboard indicator indicates low windshield washer fluid"
          " by mimicking the motion of your windshield wipers.\n"
          "                                                                                                                          "
          "What to do:  As soon as you can, add fluid to the reservoir\n"
          "                                                                                                            "
    },

    {"Name":"Brake Warning","Picture":"BW.png",
      "Data":"Definition: The parking brake is engaged or there is a problem "
          "with your braking system if you see this sign on your dashboard or the word BRAKE in red.\n"
          "                                                                                                                          "
          "What to do: First, come to a complete stop and make sure your parking brake is engaged. "
          "While your car is in park, try setting and releasing the brake. Have your automobile towed to the "
          "closest Tire & Auto for repair if the light is still on even when the parking brake is disengaged.\n"
          "                                                                                                            "
    },

    {"Name":"Lane Departure","Picture":"LS.png",
      "Data":"Definition: Nowadays, lane departure warning is a standard safety feature in most vehicles. "
          "When it notices that your car is moving out of your lane, it lights this dashboard light and "
          "emits a beeping sound.\n"
          "                                                                                                                          "
          "What to do: If necessary, adjust your steering. (The light might turn on as you deliberately change lanes.)\n"
          "                                                                                                            "
    },

    {"Name":"Transmission Temperature","Picture":"TE.png",
      "Data":"Definition: This indicates that your transmission is overheating if it shows on your dashboard. "
          "Low transmission fluid, worn transmission components, heavy hauling, or another factor could be at blame for this.\n"
          "                                                                                                                          "
          "What to do: As soon as it's safe to do so, stop and turn off the car. Get to a repair shop as quickly as you can,"
          " and don't try to drive the car again until it has cooled down. It's better to call for a tow if the light won't"
          " turn off and you still have some distance to travel.\n"
          "                                                                                                            "
    },

  ];

    _wlist()async{
    for (var i=0; i < lights.length; i++){
      final wlight = lights[i];
      final String Picture = wlight["Picture"]!;
      final String Data = wlight["Data"]!;

      warningLights.add(
        new Container(
          padding: new EdgeInsets.all(5.0),
          child: new Card(
              child: SingleChildScrollView(
                child: new Column(
                children: <Widget>[
                new Hero(
                    tag: wlight["Name"]!,
                    child: new Material(
                      child: new InkWell(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context)=> new Detail(Name: wlight["Name"]!, Picture: Picture, Data: Data,),
                        )),
                        child: new Image.asset("assets/images/$Picture",fit: BoxFit.cover,),
                        ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(1.0),),
                  new Text(wlight["Name"]!, style: new TextStyle(fontSize: 14.0),)
                ],
            ),
              )
          )
        )

      );
    }
  }
  @override
  void initState(){
      _wlist();
          super.initState();
  }

    @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
         title: const Text('Light Auto Mitsubishi'),
         centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding:const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://media.tenor.com/YTaCRsvnVbwAAAAC/modelo.gif'
            //image: NetworkImage('https://cdn.dribbble.com/users/2640235/screenshots/5795186/media/7ce4661740cd842e6677bb09db53b854.gif'
            ),
            //fit: BoxFit.cover,
          ),
        ),


    child: GridView.count(
     crossAxisCount: 2,
     crossAxisSpacing: 20.0,
     mainAxisSpacing: 15.0,
       children: warningLights,
    ),
      ),
  );
 }


class Detail extends StatelessWidget {
  Detail({required this.Name, required this.Picture,required this.Data});
  final String Name;
  final String Picture;
  final String Data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 350.0,
            child:
            new Hero(
              tag: Name,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset("assets/images/$Picture",fit: BoxFit.cover,),
                  ),
                ),
            )
          ),
          new TitleName(
            Name:Name,
          ),
          new ExplanationText(
            Data:Data,
          ),



        ],
      ),
    );
  }
}

class TitleName extends StatelessWidget {
  TitleName({required this.Name});
  final String Name;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                Name,
                style: new TextStyle(fontSize: 30.0, color: Colors.black),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class ExplanationText extends StatelessWidget {
  ExplanationText({required this.Data});
  final String Data;
   @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(padding: const EdgeInsets.all(10.0),
        child: new Text(
        Data,
        style: new TextStyle(fontSize: 18.0),
        textAlign: TextAlign.justify,
      ),
      ),
    ),
    );
  }
}
