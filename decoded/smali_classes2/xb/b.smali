.class public Lxb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lxb/b;

.field private static final d:Z

.field private static final e:Z

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ro.boot.vbmeta.device_state"

    const-string v1, ""

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lxb/b;->d:Z

    sget-object v0, Lmiui/os/Build;->TAGS:Ljava/lang/String;

    const-string v1, "release-key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lxb/b;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lxb/b;->f:Ljava/util/Map;

    const-string v1, "com.android.mmitest"

    const-string v2, "08:76:A5:C0:89:EB:D9:A2:08:BD:AE:A9:06:22:38:FE:35:D6:3F:5F:0A:0D:86:7C:80:0B:6A:74:36:0C:C4:82"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.miui.xtssettings"

    const-string v2, "C9:00:9D:01:EB:F9:F5:D0:30:2B:C7:1B:2F:E9:AA:9A:47:A4:32:BB:A1:73:08:A3:11:1B:75:D7:B2:14:90:25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.android.preconditions.gts"

    const-string v3, "A4:0D:A8:0A:59:D1:70:CA:A9:50:CF:15:C1:8C:45:4D:47:A3:9B:26:98:9D:8B:64:0E:CD:74:5B:A7:1B:F5:DC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.android.tradefed.utils.wifi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.android.compatibility.common.deviceinfo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.tradefed.contentprovider"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.permission.gts"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gts.activity_embedding"

    const-string v4, "19:75:B2:F1:71:77:BC:89:A5:DF:F3:1F:9E:64:A6:CA:E2:81:A5:3D:C1:D1:D5:9B:1D:14:7F:E1:C8:2A:FA:00"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "androidx.test.services"

    const-string v4, "63:79:DD:B4:11:10:A3:F3:8D:C9:CD:08:55:FF:DB:09:91:84:C7:49:A6:DD:F6:4B:7F:67:E4:A3:DA:56:74:D7"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gts.security"

    const-string v4, "F0:FD:6C:5B:41:0F:25:CB:25:C3:B5:33:46:C8:97:2F:AE:30:F8:EE:74:11:DF:91:04:80:AD:6B:2D:60:DB:83"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.android.preconditions.cts"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.keystore.cts"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmiui/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "test-keys"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "C8:A2:E9:BC:CF:59:7C:2F:B6:DC:66:BE:E2:93:FC:13:F2:FC:47:EC:77:BC:6B:2B:0D:52:C1:1F:51:19:2A:B8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxb/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lxb/b$a;-><init>(Lxb/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lxb/b;->b:Landroid/os/Handler;

    iput-object p1, p0, Lxb/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lxb/b;)V
    .locals 0

    invoke-direct {p0}, Lxb/b;->h()V

    return-void
.end method

.method private c(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0, p1}, Lxb/b;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string p2, "AdbInstallManager"

    const-string v1, "addIcon"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lbl/e;->c(Ljava/io/OutputStream;)V

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lbl/e;->c(Ljava/io/OutputStream;)V

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private j(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v3, "com.miui.securitycenter"

    invoke-static {v1, v3}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v4, 0x7f080879

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    const v4, 0x7f120172

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const p1, 0x7f1210c8

    invoke-virtual {v1, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v0, "single"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object p1
.end method

.method public static declared-synchronized m(Landroid/content/Context;)Lxb/b;
    .locals 2

    const-class v0, Lxb/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxb/b;->c:Lxb/b;

    if-nez v1, :cond_0

    new-instance v1, Lxb/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lxb/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lxb/b;->c:Lxb/b;

    :cond_0
    sget-object p0, Lxb/b;->c:Lxb/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private q()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v1, "adb_install_packages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static s()Z
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static v()Z
    .locals 1

    invoke-static {}, Lxb/b;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lxb/b;->e:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lxb/b;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private y(Ljava/lang/String;Ljava/lang/String;)Lxb/g;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lxb/g;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v2}, Lxb/g;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "AdbInstallManager"

    const-string v0, "parsePackageInfo"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private z(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxb/b;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lxb/b;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, p1}, Lxb/b;->z(Ljava/lang/String;)V

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lxb/b;->j(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lxb/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120f27

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.securitycenter"

    const/4 v4, 0x5

    invoke-static {v0, v3, v2, v4}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object p1, p0, Lxb/b;->b:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lxb/b;->j(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/permcenter/compact/MiuiNotificationCompat;->setEnableFloat(Z)V

    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/miui/permcenter/compact/MiuiNotificationCompat;->setFloatTime(I)V

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lxb/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120f27

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.securitycenter"

    const/4 v4, 0x5

    invoke-static {v0, v3, v2, v4}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object p1, p0, Lxb/b;->b:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lxb/b;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public D(Z)V
    .locals 1

    const-string v0, "security_adb_install_enable"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "persist.security.adbinstall"

    invoke-static {v0, p1}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->set(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public E(Z)V
    .locals 1

    const-string v0, "permcenter_install_intercept_enabled"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public F(Z)V
    .locals 1

    const-string v0, "perm_install_debug_package"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public G(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lxb/b;->p(Ljava/lang/String;)Lxb/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lxb/g;->d(I)V

    invoke-virtual {p0, p1}, Lxb/b;->e(Lxb/g;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "perm_adb_install_notify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v3, "com.miui.securitycenter"

    invoke-static {v0, v3}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, 0x7f080879

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lxb/b;->a:Landroid/content/Context;

    const v5, 0x7f1200b1

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const v1, 0x7f1200b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v0, "single"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-static {v2}, Lcom/miui/permcenter/compact/MiuiNotificationCompat;->setEnableFloat(Z)V

    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/miui/permcenter/compact/MiuiNotificationCompat;->setFloatTime(I)V

    iget-object v0, p0, Lxb/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lxb/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120f27

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v0, v3, v2, v4}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object p1, p0, Lxb/b;->b:Landroid/os/Handler;

    const/16 v0, 0xa

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public d(Lxb/g;)V
    .locals 3

    const-string v0, "permcenter_install_reject_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Lxb/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "permcenter_install_last_name"

    invoke-static {v2, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Lxb/g;)V
    .locals 2

    invoke-direct {p0}, Lxb/b;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lxb/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f(Lxb/g;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxb/b;->e(Lxb/g;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lxb/b;->c(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "permcenter_install_reject_count"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lxb/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxb/g;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lxb/b;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lxb/b;->y(Ljava/lang/String;Ljava/lang/String;)Lxb/g;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public l(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "installIcon"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public n()I
    .locals 2

    const-string v0, "permcenter_install_reject_count"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    const-string v0, "permcenter_install_last_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Lxb/g;
    .locals 2

    invoke-direct {p0}, Lxb/b;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxb/b;->y(Ljava/lang/String;Ljava/lang/String;)Lxb/g;

    move-result-object p1

    return-object p1
.end method

.method public r()Z
    .locals 4

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "ro.secureboot.devicelock"

    invoke-static {v0, v1}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.secureboot.lockstate"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "unlocked"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "persist.security.adbinstall"

    invoke-static {v0, v1}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    const-string v2, "security_adb_install_enable"

    invoke-static {v2, v0, v1}, Lr4/a;->f(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    invoke-static {}, Lxb/b;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "permcenter_install_intercept_enabled"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 2

    const-string v0, "perm_install_debug_package"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lr4/a;->f(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public w(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    sget-object v0, Lxb/b;->f:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Leg/c;->f(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.permcenter.install.action_data_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lxb/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
