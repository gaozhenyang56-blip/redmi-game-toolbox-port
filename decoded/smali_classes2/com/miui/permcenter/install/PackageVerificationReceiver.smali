.class public Lcom/miui/permcenter/install/PackageVerificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/permcenter/install/PackageVerificationReceiver;->a:Ljava/util/Set;

    const-string v1, "com.miui.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILjava/lang/String;Landroid/os/IMessenger;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->h(Landroid/content/Context;ILjava/lang/String;Landroid/os/IMessenger;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxb/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.global.packageinstaller.action.verifypackage"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "unKnown"

    :cond_2
    const-string v0, "installing"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.miui.securitycenter.permission.GLOBAL_PACKAGEINSTALLER"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "parseApk"

    const-string v1, "VerificationReceiver"

    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    invoke-static {p0, p2}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string p0, "Current package has existed."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-nez p1, :cond_2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "flags"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://guard"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v0, p3, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v5}, Lcom/miui/analytics/AnalyticsUtil;->trackException(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_2

    const-string p1, "pkgInfo"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " info:  "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-static {p1}, Leg/c;->f(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v4

    :cond_4
    invoke-static {p0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object p0

    invoke-virtual {p0}, Lxb/b;->u()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "3E:9B:95:7F:60:04:4E:76:FD:9E:19:E2:F5:92:F0:39:35:27:B0:59:C5:7D:96:21:AB:CE:EA:13:29:A4:5E:EC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v4

    :cond_5
    invoke-static {p2}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIUILOG- not found signature pkg : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v4

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can\'t install, signature verify fail pkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    :catch_1
    move-exception p0

    const-string p1, "canInstall check error"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/IMessenger;I)V
    .locals 7

    new-instance v6, Lxb/i;

    move-object v0, v6

    move-object v1, p1

    move v2, p5

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lxb/i;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/IMessenger;Ljava/lang/String;)V

    invoke-static {v6}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static e(Landroid/os/IMessenger;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "VerificationReceiver"

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->what:I

    :try_start_0
    invoke-interface {p0, v2}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "messenger send error:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify package "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", finish: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "=======PackageVerificationRecevier Start========"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DEBUG_KEY:3E:9B:95:7F:60:04:4E:76:FD:9E:19:E2:F5:92:F0:39:35:27:B0:59:C5:7D:96:21:AB:CE:EA:13:29:A4:5E:EC"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "=======PackageVerificationRecevier End========"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.miui.weather2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.miui.calculator"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.duokan.reader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "88:7E:40:DA:D9:6C:D7:B4:CC:0A:59:67:2B:93:81:19:9F:7D:E2:04:15:B8:92:D7:06:89:5F:84:93:17:8E:2A"

    return-object p0

    :cond_1
    const-string v0, "com.mfashiongallery.emag"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "com.mi.misupport"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "B0:31:FE:98:A4:DB:B0:D4:D8:26:61:78:7F:25:DE:64:31:82:B3:78:E9:EF:63:2D:8A:DE:A7:5A:AB:58:F2:D8"

    return-object p0

    :cond_3
    const-string v0, "com.xiaomi.gamecenter.pad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_7

    const-string v0, "com.facemoji.lite.xiaomi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "4E:5A:78:C0:45:03:16:E3:8A:FA:B3:EC:B6:BA:C9:93:2C:09:5F:2B:34:36:0C:40:12:98:57:B7:86:57:E2:4F"

    return-object p0

    :cond_5
    const-string v0, "com.kikaoem.xiaomi.qisiemoji.inputmethod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "A8:1B:81:11:A7:68:10:7F:F2:F8:BB:72:03:4B:D6:56:5E:1D:71:37:4A:43:60:60:E3:41:47:22:D1:96:8A:DB"

    return-object p0

    :cond_6
    const-string v0, "com.preff.kb.xm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "A4:E8:E3:9D:89:36:DA:1C:1A:94:E2:9C:87:82:FB:60:94:55:BC:4B:9A:61:C0:0C:1C:FA:91:2A:B3:E6:1A:1C"

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :cond_8
    :goto_0
    const-string p0, "D4:5F:07:6F:E2:3A:1A:5B:7F:48:6E:3F:F4:15:47:A2:02:3D:BF:E1:FE:73:35:3B:1E:48:EB:DF:ED:72:CC:6F"

    return-object p0
.end method

.method private static synthetic h(Landroid/content/Context;ILjava/lang/String;Landroid/os/IMessenger;Ljava/lang/String;)V
    .locals 6

    const-string v0, "parseApk"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "VerificationReceiver"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    goto :goto_2

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x40

    const-string v4, "flags"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "content://guard"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0, p2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackException(Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_2

    const-string v0, "pkgInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_3

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p1, v3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    if-nez v3, :cond_4

    invoke-static {p3, p2, v0}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->e(Landroid/os/IMessenger;Ljava/lang/String;Z)V

    return-void

    :cond_4
    const-string v1, "com.google.android.webview"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/miui/permcenter/install/PackageVerificationReceiver;->a:Ljava/util/Set;

    invoke-interface {v1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can\'t install com.google.android.webview installer : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p2, v0}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->e(Landroid/os/IMessenger;Ljava/lang/String;Z)V

    return-void

    :cond_5
    invoke-static {p0, p1, v3, p2}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->c(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p3, p2, v0}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->e(Landroid/os/IMessenger;Ljava/lang/String;Z)V

    return-void

    :cond_6
    const/4 p1, 0x1

    invoke-static {p3, p2, p1}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->e(Landroid/os/IMessenger;Ljava/lang/String;Z)V

    invoke-static {p0, p4, v3}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "installerPackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "observer"

    invoke-static {p2, v0}, Lcom/miui/permcenter/compact/IntentCompat;->getIBinderExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v0}, Landroid/os/IMessenger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMessenger;

    move-result-object v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start verify install path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sessionId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VerificationReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/permcenter/install/PackageVerificationReceiver;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/IMessenger;I)V

    return-void
.end method
