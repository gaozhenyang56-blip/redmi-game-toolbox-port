.class public Lcom/miui/networkassistant/config/DailyCardBrandConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DailyCardBrandConfig"

.field private static sInstance:Lcom/miui/networkassistant/config/DailyCardBrandConfig;


# instance fields
.field private mBrandMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/DailyCardBrandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->initData()V

    return-void
.end method

.method private buildDefaultConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;-><init>()V

    const-string v1, "\u81ea\u5b9a\u4e49"

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    return-object v0
.end method

.method private buildFullDailyConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;-><init>()V

    const-string v1, "\u5403\u5230\u9971"

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    const-wide/32 v1, 0x40000000

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cn.cntv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    return-object v0
.end method

.method private buildMiDailyCardConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;-><init>()V

    const-string v1, "\u7c73\u7c89\u5361"

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    const-wide/32 v1, 0x40000000

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cn.cntv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    return-object v0
.end method

.method private buildTencentDailyCardConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;-><init>()V

    const-string v1, "\u817e\u8baf\u738b\u5361"

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    const-wide/32 v1, 0x32000000

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqlite"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tim"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqmusic"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.android.qqdownloader"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqpimsecure"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.mtt"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qzone"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.androidqqmail"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.news"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qq.reader"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.weishi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.zebra"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qq.ac.android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqpicshow"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.loverzone"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqsports"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqhouse"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqcalendar"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qq.lottery51buy"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.meishi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.radio"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.portfolio"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qlauncher.lite"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qlauncher"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.reading"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.map"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.pb"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.gamejoy"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.powermanager"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.mobileqqi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qq.qcloud"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.gallerymanager"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.research.drop"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.QQLottery"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.now"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.launcher"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.unipay"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.navsns"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.karaoke"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.k12"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.edu"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqlivebroadcast"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqlivekid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.igame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qgame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqpim"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.wifimanager"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.wework"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.weread"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.pubgm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.cf"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.wec"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.cldts"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qqgame.hlddz"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.wesix"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.tmsk.qj2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.KiHan"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.pao"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqgame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.shootgame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqxl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qt.qtl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qqgame.mic"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.ylm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.qjnn"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.rxcq"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.game.rhythmmaster"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.qqgame.happymj"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.peng"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.feiji"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "air.com.tencent.qqpasture"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.Qfarm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.Q108"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.gods"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.hexkog"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqgame.qqTexaswvga"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqgame.xq"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.lian"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.vdefense"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.game.VXDGame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.modoomarble"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.Alice"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.west"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.vlong"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.jjdzs"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.clover"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.mxm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.kof98"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.kingnet.ssl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.king.candycrushsaga"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.yxwdzzjy"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.kof"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.tmgp.qqx5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.smile.gifmaker"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.duowan.kiwi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "air.tv.douyu.android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.panda.videoliveplatform"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huomaotv.mobile"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.gameabc.zhanqiAndroid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.longzhu.tga"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "tv.yixia.bobo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.mogujie"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.kugou.android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.wuba"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.sankuai.meituan"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.anjuke.android.app"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.sina.weibo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "cn.cntv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.gwgo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.zhihu.android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    return-object v0
.end method

.method private buildTianShenDailyCardConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;-><init>()V

    const-string v1, "\u5c0f\u5929\u795e\u5361"

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    const-wide/32 v1, 0x32000000

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cn.cntv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    return-object v0
.end method

.method private getBrandNameList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->sInstance:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->sInstance:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->sInstance:Lcom/miui/networkassistant/config/DailyCardBrandConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initData()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->buildDefaultConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->setIndex(I)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->buildFullDailyConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->setIndex(I)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->buildMiDailyCardConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->setIndex(I)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->buildTianShenDailyCardConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->setIndex(I)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->buildTencentDailyCardConfig()Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->setIndex(I)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBrandIndex(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getBrandIndexInList(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget v2, v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getBrandIndexInList(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getBrandInfo(Ljava/lang/String;)Lcom/miui/networkassistant/model/DailyCardBrandInfo;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->TAG:Ljava/lang/String;

    const-string v0, "brand is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error brand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBrandList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/DailyCardBrandInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mBrandMap:Ljava/util/List;

    return-object v0
.end method

.method public getBrandNameI18N(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getBrandNameListI18N()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
