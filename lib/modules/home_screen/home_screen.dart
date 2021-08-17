import 'package:agabiamokdsa/modules/before_pray/before_pray_screen.dart';
import 'package:agabiamokdsa/modules/home_screen/home_model.dart';
import 'package:agabiamokdsa/modules/home_screen/pray_model.dart';
import 'package:agabiamokdsa/modules/pray_screen/pray_screen.dart';
import 'package:agabiamokdsa/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<StartPrayModel> startPrayList =[
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
    StartPrayModel(start: 'السلام عليكم',body: 'استرها علينا يارب والله احنا غلابة ومبنفهمش حاجه ',title: 'استرها يارب'),
  ];
  List<HomeModel> get homeData => [
    HomeModel(
        image: 'assets/images/baker.jpeg',
        title: 'باكر',
        prayDescription: 'في هذه الصلاة نشكر الله على انقضاء الليل بسلام، ونطلب من أجل نهار مضيء بالأعمال الصالحة، وفيها نذكر قيامة السيد المسيح في باكر النهار فنمجده على قيامته.',
        startPrayModel:  startPrayList,
    ),

    HomeModel(
        image: 'assets/images/third.jpg',
        title: 'الساعة الثالثة',
        prayDescription:
            'فى مثل هذة الساعة حكم بيلاطس على السيد المسيح ، وأيضا فى مثلها حل الروح القدس على التلاميذ الأطهار . فى هذة الصلاة نطلب إضرام مواهب الروح القدس فينا . وهذة الساعة تقابل التاسعة صباحا بالتوقيت الإفرنجى'),
    HomeModel(
        image: 'assets/images/six.jpg',
        title: 'الساعة السادسة',
        prayDescription: 'في مثل هذه الساعة من النهار صلب مخلصنا، وقبل طلبة اللص بأن يذكره عند مجيئه في ملكوته. وفي مثلها بداية الظلمة. وتقابل الثانية عشرة ظهرًا بالتوقيت الإفرنجي.'),
    HomeModel(
        image: 'assets/images/nine.jpeg',
        title: 'الساعة التاسعة',
        prayDescription: 'في الساعة التاسعة نادى ربنا يسوع بصوت عظيم يا أبتاه في يديك أستودع روحي وأسلم الروح فانشق حجاب الهيكل من وسطه. وأنارت الشمس التي أظلمت في الساعة السادسة. وفي هذه الساعة نتذكر اللص الذي سأل أن يذكره المخلص في ملكوته فأعطاه سؤله. وهي تقابل الثالثة بعد الظهر بالتوقيت الإفرنجي.'),
    HomeModel(
        image: 'assets/images/elgrop.jpeg',
        title: 'الغروب',
        prayDescription: 'رتبت هذه الصلاة بمناسبة إنزال جسد السيد المسيح من على الصليب وفيها نشكر الرب على حفظه إيانا إلى المساء. وتقابل الخامسة بعد الظهر بالتوقيت الإفرنجي.'),
    HomeModel(
        image: 'assets/images/sleep.jpg',
        title: 'النوم',
        prayDescription: 'رتبت بمناسبة وضع سيدنا في القبر، وبمناسبة أنها آخر ساعة من ساعات عمر الإنسان في نهاره. نطلب فيها خلاصا من الدينونة الرهيبة. وتقابل الساعة السادسة مساء بالتوقيت الإفرنجي.'),
    HomeModel(
        image: 'assets/images/life.jpg',
        title: 'نصف الليل',
        prayDescription: 'صلاة نصف الليل تتحدث عن المجيء الثاني لإلهنا ومخلصنا السيد المسيح، وتنقسم تلك الصلاة لثلاث خدمات، مثل صلاة السيد المسيح في بُستان جثسيماني.'),
  ];

  final List<PrayModel> prayData = [
    PrayModel(image: 'assets/images/baker.jpeg', title: 'صلاة التوبة',body: 'ربى و إلهي و مخلصي يسوع المسيح, كنز الرحمة و نبع الخلاص, آتى إليك مقرا بذنوبي. اعترف بأني بوقاحة تجاسرت و دنست هيكلك المقدس بخطاياي. والآن ألجأ إلى رحمتك وتحننك, لأن مراحمك لا تحصى, وأنك لا ترد خاطئا قد أقبل إليك. فها أنا آتى يا رب معترفا بأن آثامي قد طمت فوق رأسي كحمل ثقيل, وقد فارقتني قوتي. فلا تحجب يا رب وجهك عنى لئلا أرتاع. ولا توبخني بغضبك. ولا تؤدبني بغيظك. ولا تحاكمني بحسب استحقاقي. ارحمني يا رب فإني ضعيف. اذكر يا رب أنى عمل يديك وارأف بي. لا تدخل في المحاكمة مع عبدك, لأنه لن يتبرر قدامك أي حيّ. عد وألبسني حلة جديدة تليق بمجدك. اغفر لي وسامحني, لأترنم قائلا: طوبى لمن غفر إثمه. وسترت خطيته. اعترف لك بخطيتي, ولا أكتم إثمي. قلت اعترف للرب بذنبي. وأنك رفعت آثام خطيتي. آمين.'),
    PrayModel(image: 'assets/images/baker.jpeg', title: 'صلاة قبل الاعتراف',body: 'أيها الآب القدوس, الذي يحب رجوع الخطاة, وقد وعدت أنك مستعد لقبولهم, انظر يا رب الآن إلى نفس خاطئة قد ضلت و تاهت في أودية العصيان زمانًا طويلًا, فيه تمررت و شعرت بشقاوتها, لبعدها عن ينبوع خلاصها. والآن تتقدم إليك, تطلب منك تطهيرها من الأدناس والأقذار التي توحلت فيها.اقلبها ولا ترفضها, فإنك إن نظرت إليها بحنوك و عاملتها برحمتك, تنقت و خلصت, وإن أهملتها بادت و هلكت. امنحني يا رب نعمة بها أتجاسر على الدنو منك بإيمان وطيد ورجاء تام. لأعترف بذنوبي وأكره العودة إليها. وليبكتني روحك على آثامي. أنر قلبي لأرى كم أخطأت وأسأت و تركت و أهملت. وامنحني عزمًا على عدم الرجوع إلى الإثم, لأثبت فى حفظ وصاياك, وأحيا لمجد اسمك القدوس. آمين.'),
    PrayModel(image: 'assets/images/baker.jpeg', title: 'صلاة بعد الاعتراف',body: 'أشكر صلاحك أيها الآب محب البشر، لأنك لم تشأ هلاكي. بل أيقظتني من غفلتي، وهديتني إلى طريقك، ورددتني من وادي الهلاك إلى حمى حصنك الأمين. فاملأني بالرجاء والإيمان. لقد أقبلت إليك يا رب كالمريض إلى الطبيب الشافي، وكالمفتقر الجائع إلى الغذاء المشبع، وكالعطشان إلى ينابيع المياه الحية، وكالفقير إلى مصدر الغنى، وكالخاطئ إلى المخلص، وكالمائت إلى ينبوع الحياة. لأنك خلاصي، وطبيبي، وقوتي، وتعزيتي، وسعادتي, وفيك راحتي. فأعنى واحفظني وسيج حولي. وعلمني أن أضع بين يديك كل إرادتي, لأسير حسب ما تشاء. أعن ضعفي كي أثبت, و أدوم أمينا لك إلى النهاية.'),
    PrayModel(image: 'assets/images/baker.jpeg', title: 'صلاة قبل التناول',body: 'يا رب إني غير مستحق أن تدخل تحت سقف بيتي لأني إنسان خاطئ، فقل كلمة أولًا لتبرأ نفسي. قل لنفسي: مغفورة لك خطاياك. إني مقفر وخال من كل صلاح، وليس لي سوى تحننك ورأفتك ومحبتك للبشر. وأنت قد تنازلت من سماء مجدك غير المدرك إلى ذلنا، وارتضيت أن تولد في مذود البقر. فلا ترفض يا مخلصي القدوس أن تقبل إلى نفسي الذليلة الحقيرة التي تنتظر حضورك البهي. إنك لم تستنكف من دخول بيت الأبرص لتشفيه، فاسمح يا إلهي بالدخول إلى نفسي لتطهرها. لم تمنع الخاطئة من تقبيل قدميك فلا تحرمني من الدنو منك لتناول جسدك الطاهر ودمك الأقدس. بل فليصر تناولي للاشتراك معك، ولإبادة كل ما هو دنس، ولإماتة أهوائي الدنيئة، وللعمل بوصاياك المحيية، ولشفاء نفسي وجسدي من كل خطية، ولقبول مواهبك، ولسكنى نعمتك، ولحلول روحك، وللاتحاد بك، والثبات فيك، لأحيا لمجد اسمك القدوس. آمين.'),
    PrayModel(image: 'assets/images/baker.jpeg', title: 'صلاة بعد التناول',body: 'قد امتلأ قلبي فرحًا، ولساني تهليلًا. فلتعظم نفسي الرب، وتبتهج روحي بالله مخلصي. لقد أقبلت إليك يا رب لِتُلْبِسْني حلة نقية للدخول إلى عرسك. فليكن اتحادي بك اليوم دائمًا. لأني به أزداد في الفضيلة ثباتًا ونموًا. ويشتد إيماني. ويتقوَّى رجائي. فَلْيَصِر تناولي علامة للخلاص، ولباسًا للنعمة، وحلة للميلاد الجديد، وطهارة وقداسة للنفس والجسد والروح، ونقاوة للحب، وفرحًا وسرورًا أبديًا ، ولجواب حسن القبول أمام منبرك الرهيب. إني أسلم ذاتي بين حنوك، فاجعلني واحدًا معك، وسَيِّرني تحت إرادتك. استدع إليك عقلي وحواسي وإرادتي لتباركها فتكون طوع مشيئتك. أحيي قلبي وأيقظ ضميري. شتت جميع خيالات العدو. وقل للزوابع أن تسكت. سر معي وهدئ روعي. ارو عطشى، وأضرِم لهيب محبتك في قلبي. تلاف بحنو ورفق كل ما ينقصني. امكث معي لأن النهار قد مال. ورافقني إلى أنْ ينسم النهار، فإنك وحدك غايتي وسعادتي، أنت وحدك يا رب إلى الأبد. آمين.'),
    PrayModel(image: 'assets/images/baker.jpeg', title: 'صلاة قبل الاكل',body: 'تباركت يا رب، يا مَنْ تعولنا منذ حداثتنا، وتهبنا خبراتك، وتهيئ الغذاء للجميع. لأن أعين الكل تترجاك، فأنت تعطيهم طعامهم فى حينه. تفتح يدك فتشبع كل حيّ رضى. لك المجد والتسبيح والبركة والشكر على ما أعددت لنا من الطعام الموضوع على هذه المائدة المعدة لغذاء أجسادنا. اجعله شفاء وقوة لحياتنا الجسدية. امنح خلاصًا ونعمة وبركة وطهرًا لكل المتناولين منه. ارفع عقولنا إليك كل حين، لطلب طعامنا الروحي غير البائد. أعطنا أن نعمل للطعام الباقي للحياة الأبدية وهب لنا نصيبًا في الاشتراك في وليمتك السمائية. امنحنا خبز البركة وكأس الخلاص، واملأ قلوبنا من البهجة والفرح. انعم علينا بحياة مطمئنة هادئة، وسعادة في النفس، وصحة في الجسد وقداسة في الروح. علمنا أن نطلب رضاك في كل شيء، حتى إذا أكلنا أو شربنا أو عملنا أي شيء، نعمله لمجد اسمك القدوس، لأن لك المجد إلى الأبد آمين.'),
    PrayModel(
        image: 'assets/images/baker.jpeg',
        title: 'طلب مشورة الله قبل الشروع فى عمل',
        body: 'إلهي، أنت تعلم أنى لا أعرف ما هو الصالح لنفسي. وها أنا قد شرعت في.... فمن أين لي أن أعرف جيدًا ما هو الصالح لي إن لم أسترشد نعمتك في ذلك؟ فأسألك يا رب أن تدبرني في هذا الأمر. لا تتركني ومشورة نفسي، ولا تدعني أجرى وراء ميولي لئلا أتورط وأسقط، بل احفظ عبدك من الزلل، وكن متكلي وعوني، ودبر الأمر بحسب إرادتك كما يوافق صلاحك. وإن حسن لديك فليكن كما تريد، وهبني نعمتك لأتممه. وإن كان يضر فانزع منى يا رب هذه الرغبة، لأنك عليم بكل شيء، ولا يخفى عليك أمر. وها أنا عبدك، عاملني بما يوافقك، إذ لإنجاح تام، ولا سلام كامل، إلا بتسليم ذاتي تحت تدبير مشيئتك. علمني أن أقول في كل شيء: يا أبتاه، ليس كمشيئتي بل كمشيئتك. لأن لك الملك والقوة والمجد من الآن وإلى الأبد. آمين.'),
    PrayModel(
        image: 'assets/images/baker.jpeg',
        title: 'طلبة من الأبصالمودية السنوية',
      body: 'يا ربنا يسوع المسيح، حامل خطية العالم، احسبنا مع خرافك الذين عن يمينك. متى أتيت في ظهورك الثاني المخوف فلا نسمع برعدة: إنني لست أعرفكم. بل نستحق سماع الصوت الممتلئ فرحًا، الذي لرأفتك يصرخ قائلًا: تعالوا إلىَّ يا مباركي أبي، رثوا الحياة الدائمة إلى الأبد. يأتي الشهداء حاملين عذاباتهم. ويأتي الصديقون حاملين فضائلهم. يأتي ابن الله في مجده ومجد أبيه، ويجازى كل واحد كأعماله. أيها المسيح، كلمة الآب الإله الوحيد، أعطنا سلامك المملوء من كل فرح، كما أعطيته لرسلك القديسين. قل لنا مثلهم : سلامي أعطيكم. سلامي . سلامي أنا الذي أخذته من أبي، أنا أتركه معكم من الآن وإلى الأبد. يا ملاك هذا اليوم، الطائر إلى العلو بهذه التسبحة، اذكرنا أمام الرب، ليغفر لنا خطايانا. المرضى يا رب اشفهم، والذين رقدوا يا رب نيحهم. إخوتنا الذين في شدة، يا رب أعنهم وإيانا. ليباركنا الله، ولنبارك اسمه القدوس. في كل حين تسبحته دائمة في أفواهنا. مبارك الآب والابن والروح القدس، الثالوث الكامل، نسجد له ونمجده. آمين.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('اجبيه قدسية',style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.1,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'صلوات السواعى',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildListPreyItem(
                        homeData[index],
                        onTap: () => navigateTo(
                            context: context,
                            widget: BeforePray(
                              model: homeData[index],
                            )),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 8.0,
                      ),
                  itemCount: homeData.length),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ExpansionTile(
                    title: Text(
                      'صلوات اخرى',
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w700),
                    ),
                    children: [
                      ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) =>
                              buildListTail(prayData[index],context),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 8.0,
                              ),
                          itemCount: prayData.length),
                    ],
                  ),
                ),
              ),
            ),
            Center(child: Image(image: AssetImage('assets/images/jausuback.png'),height: MediaQuery.of(context).size.height/2,)),
          ],
        ),
      ),
    );
  }
}

Widget buildListTail(PrayModel model,  context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.8),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: ListTile(
      onTap: () => navigateTo(context: context, widget: PrayScreen(model: model,)),
      title: Text(model.title,style: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold
      ),),
       leading: SizedBox(
        height: 64.0,
        width: 64.0, // fixed width and height
        child: Image(image: AssetImage('assets/images/board1.png',)),
    )

      //Image(image: AssetImage('assets/images/icons/jesus.png',),width: 48,height: 48,fit: BoxFit.cover,),

    ),
  );
}
