.class public Lo8/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo8/k$g;
    }
.end annotation


# static fields
.field private static p:Lo8/k;


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

.field private f:Lcom/miui/gamebooster/voicechanger/model/a;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Landroid/content/ServiceConnection;

.field private final o:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo8/k;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lo8/k;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lo8/k;->i:I

    const/4 v1, 0x1

    iput v1, p0, Lo8/k;->j:I

    iput v0, p0, Lo8/k;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo8/k;->m:Landroid/os/Handler;

    new-instance v0, Lo8/k$a;

    invoke-direct {v0, p0}, Lo8/k$a;-><init>(Lo8/k;)V

    iput-object v0, p0, Lo8/k;->n:Landroid/content/ServiceConnection;

    new-instance v0, Lo8/k$b;

    invoke-direct {v0, p0}, Lo8/k$b;-><init>(Lo8/k;)V

    iput-object v0, p0, Lo8/k;->o:Landroid/os/IBinder$DeathRecipient;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lo8/k;->a:Landroid/media/AudioManager;

    return-void
.end method

.method public static declared-synchronized C()Lo8/k;
    .locals 2

    const-class v0, Lo8/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo8/k;->p:Lo8/k;

    if-nez v1, :cond_0

    new-instance v1, Lo8/k;

    invoke-direct {v1}, Lo8/k;-><init>()V

    sput-object v1, Lo8/k;->p:Lo8/k;

    :cond_0
    sget-object v1, Lo8/k;->p:Lo8/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private F()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->w4()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private G()Z
    .locals 1

    iget-boolean v0, p0, Lo8/k;->c:Z

    return v0
.end method

.method private H()Z
    .locals 2

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static I()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zh"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const-string v1, "CN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TW"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    return v0

    :cond_2
    const-string v3, "en"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "US"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "UK"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :cond_3
    move v0, v4

    :catch_0
    :cond_4
    return v0
.end method

.method private M()Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Ls5/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->x()Z

    move-result v0

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

.method private synthetic O()V
    .locals 3

    iget-object v0, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;->onUserInfoRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRefreshUICallBack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceChangeCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private P()Lcom/miui/gamebooster/voicechanger/model/a;
    .locals 3

    const-string v0, "key_currentbooster_pkg_uid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    :try_start_0
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "VoiceChangeCore"

    const-string v2, "parseInt error while get uid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    new-instance v2, Lcom/miui/gamebooster/voicechanger/model/a;

    invoke-direct {v2, v1, v0}, Lcom/miui/gamebooster/voicechanger/model/a;-><init>(Ljava/lang/String;I)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method private R()V
    .locals 6

    invoke-virtual {p0}, Lo8/k;->s0()Z

    move-result v0

    const v1, 0x7f120b16

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060389

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    const v5, 0x7f080760

    invoke-direct {v0, v3, v4, v5}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p0}, Lo8/k;->L()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "voice_renewal_click"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038a

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const v4, 0x7f08075f

    invoke-direct {v0, v1, v3, v4}, Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;-><init>(Ljava/lang/String;II)V

    :cond_1
    iget-object v1, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;->v1(ILjava/lang/String;Lcom/miui/gamebooster/voicechanger/model/VoiceTipsModel;)V

    :cond_2
    return-void
.end method

.method private V()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryTrialState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceChangeCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Lo8/k$d;

    invoke-direct {v1, p0}, Lo8/k$d;-><init>(Lo8/k;)V

    invoke-interface {v0, v1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->W1(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private X()V
    .locals 3

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "VoiceChangeCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryTwiceTrialState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_2

    new-instance v1, Lo8/k$e;

    invoke-direct {v1, p0}, Lo8/k$e;-><init>(Lo8/k;)V

    invoke-interface {v0, v1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->D7(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lo8/k;)V
    .locals 0

    invoke-direct {p0}, Lo8/k;->O()V

    return-void
.end method

.method private a0()V
    .locals 3

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lo8/k;->e0()V

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lo8/k;->o:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {p0}, Lo8/k;->p0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b(Lo8/k;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 0

    iget-object p0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object p0
.end method

.method private static b0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lo8/k;->p:Lo8/k;

    return-void
.end method

.method static synthetic c(Lo8/k;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 0

    iput-object p1, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object p1
.end method

.method static synthetic d(Lo8/k;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lo8/k;->o:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic e(Lo8/k;I)I
    .locals 0

    iput p1, p0, Lo8/k;->k:I

    return p1
.end method

.method private e0()V
    .locals 1

    iget v0, p0, Lo8/k;->h:I

    iput v0, p0, Lo8/k;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo8/k;->l:Z

    return-void
.end method

.method static synthetic f(Lo8/k;)I
    .locals 0

    iget p0, p0, Lo8/k;->j:I

    return p0
.end method

.method static synthetic g(Lo8/k;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo8/k;->s(J)V

    return-void
.end method

.method static synthetic h(Lo8/k;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo8/k;->i0(Z)V

    return-void
.end method

.method public static h0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_toast_common_message"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_toast_common_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic i(Lo8/k;)V
    .locals 0

    invoke-direct {p0}, Lo8/k;->m0()V

    return-void
.end method

.method private i0(Z)V
    .locals 0

    iput-boolean p1, p0, Lo8/k;->c:Z

    return-void
.end method

.method static synthetic j(Lo8/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo8/k;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private j0([S)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method static synthetic k(Lo8/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo8/k;->g:Z

    return p1
.end method

.method private k0()V
    .locals 5

    invoke-virtual {p0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lo8/k;->y()I

    move-result v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "original"

    invoke-static {v4}, La8/j2;->t(Ljava/lang/String;)V

    iget-object v4, p0, Lo8/k;->a:Landroid/media/AudioManager;

    invoke-static {v4, v2, v0, v1}, La8/j2;->p(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-static {v3}, La8/j2;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lo8/k;->a:Landroid/media/AudioManager;

    invoke-static {v4, v2, v3, v0, v1}, La8/j2;->q(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3, v0}, Lcom/miui/gamebooster/utils/a;->E0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, La8/j2;->r(J)V

    :cond_1
    const-string v0, "VoiceChangeCore"

    const-string v1, "startOldVersionVoiceChangeService..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic l(Lo8/k;)V
    .locals 0

    invoke-direct {p0}, Lo8/k;->a0()V

    return-void
.end method

.method private l0()V
    .locals 2

    const-string v0, "VoiceChangeCore"

    const-string v1, "startvoice by new way "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lo8/k;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startVoiceChange: invalid!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lo8/k;->t()V

    invoke-virtual {p0}, Lo8/k;->S()V

    return-void
.end method

.method static synthetic m(Lo8/k;)Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;
    .locals 0

    iget-object p0, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    return-object p0
.end method

.method private m0()V
    .locals 4

    invoke-virtual {p0}, Lo8/k;->K()Z

    move-result v0

    const-string v1, "VoiceChangeCore"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lo8/k;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo8/k;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo8/k;->l0()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lo8/k;->S()V

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceChangeIfNeed initXunyouVoiceService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOpenXunyouProductPage = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lo8/k;->l:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lo8/k;->k0()V

    const-string v0, "startVoiceChangeIfNeed older version voiceChange Service"

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic n(Lo8/k;)V
    .locals 0

    invoke-direct {p0}, Lo8/k;->R()V

    return-void
.end method

.method private n0()V
    .locals 3

    const-string v0, "VoiceChangeCore"

    const-string v1, "startXunyouVoiceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lo8/k;->s0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startXunyouVoiceChange fail! vip expired!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lo8/k;->y()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lo8/k;->g0(Ljava/lang/String;I)V

    invoke-static {v0}, La8/j2;->k(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->E0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, La8/j2;->r(J)V

    :cond_1
    return-void
.end method

.method private o0()V
    .locals 5

    invoke-virtual {p0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lo8/k;->y()I

    move-result v1

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, La8/j2;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "0"

    invoke-virtual {p0, v3, v1}, Lo8/k;->g0(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v3, "original"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lo8/k;->a:Landroid/media/AudioManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, La8/j2;->p(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    invoke-direct {p0, v0, v2}, Lo8/k;->r0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private p([B)[S
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [S

    return-object p1

    :cond_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method private q()V
    .locals 2

    const-wide/32 v0, 0x15180

    invoke-direct {p0, v0, v1}, Lo8/k;->t0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lr8/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr8/b;->n(Ljava/lang/String;)V

    invoke-static {}, Lr8/b;->o()V

    :cond_0
    return-void
.end method

.method private q0()V
    .locals 4

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVipInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceChangeCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lo8/k;->o()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    invoke-interface {v0, v1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->O4(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private r0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, La8/j2;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/miui/gamebooster/utils/a;->H0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La8/j2;->c()J

    move-result-wide p1

    add-long/2addr p1, v2

    invoke-static {p1, p2}, La8/j2;->s(J)V

    :cond_0
    return-void
.end method

.method private s(J)V
    .locals 2

    iget-object v0, p0, Lo8/k;->m:Landroid/os/Handler;

    new-instance v1, Lo8/j;

    invoke-direct {v1, p0}, Lo8/j;-><init>(Lo8/k;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doRefreshUICallBack \uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VoiceChangeCore"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    const-string v1, "VoiceChangeCore"

    if-nez v0, :cond_0

    const-string v0, "doXunyouVoiceAuthentication - service not online"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p0, Lo8/k;->k:I

    iget v3, p0, Lo8/k;->h:I

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplication op , current state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo8/k;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v2, Lo8/k$f;

    invoke-direct {v2, p0}, Lo8/k$f;-><init>(Lo8/k;)V

    invoke-interface {v0, v2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->Q5(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    iget v0, p0, Lo8/k;->i:I

    iput v0, p0, Lo8/k;->k:I

    const-string v0, "doXunyouVoiceAuthentication"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doXunyouVoiceAuthentication fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private t0(J)Z
    .locals 5

    invoke-virtual {p0}, Lo8/k;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :catch_0
    move-exception p1

    const-string p2, "VoiceChangeCore"

    const-string v0, "parse time error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private v()V
    .locals 4

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "original"

    invoke-static {v0}, La8/j2;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lo8/k;->y()I

    move-result v1

    iget-object v2, p0, Lo8/k;->a:Landroid/media/AudioManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, La8/j2;->p(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private y()I
    .locals 1

    iget-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo8/k;->P()Lcom/miui/gamebooster/voicechanger/model/a;

    move-result-object v0

    iput-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    :cond_0
    iget-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/voicechanger/model/a;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private z()Ljava/lang/String;
    .locals 3

    const-string v0, "xunyou_voice_en.json"

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "xunyou_voice.json"

    return-object v0

    :cond_0
    const-string v2, "TW"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "xunyou_voice_tw.json"

    return-object v0

    :cond_1
    const-string v2, "UK"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "US"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {p0}, Lo8/k;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v1}, Lbl/e;->i(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lr8/b;->a()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "voice_change_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "voice_change_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "voice_change_icon_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "suit_sex_type"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_0

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;

    invoke-direct {v4, v5, v6}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setIcon(Ljava/lang/String;)V

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VoiceChangeCore"

    const-string v3, "init default data error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lo8/k;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo8/k;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0}, Lo8/k;->F()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0}, Lo8/k;->F()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->n8()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v1, :cond_0

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lr8/b;->a()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->y4(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lo8/k;->A()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VoiceChangeCore"

    const-string v2, "getVoicelist error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 2

    invoke-direct {p0}, Lo8/k;->F()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public K()Z
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La8/g0;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo8/k;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La8/j2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()Z
    .locals 2

    invoke-direct {p0}, Lo8/k;->F()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lo8/k;->F()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public N()Z
    .locals 1

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Q(ILcom/miui/gamebooster/service/MiuiVoiceChangeCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/common/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lw8/k;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    const/16 v1, 0x1f

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->I(ILcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->R5(ILcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo8/k;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public S()V
    .locals 5

    const-string v0, "VoiceChangeCore"

    const-string v1, "processSystemVoice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "original"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo8/k;->a:Landroid/media/AudioManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lo8/k;->y()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, La8/j2;->q(Landroid/media/AudioManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lo8/k;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->E0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, La8/j2;->r(J)V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 0

    invoke-direct {p0}, Lo8/k;->q()V

    invoke-direct {p0}, Lo8/k;->n0()V

    return-void
.end method

.method public U(III)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->z7(III)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public W()V
    .locals 1

    invoke-virtual {p0}, Lo8/k;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo8/k;->V()V

    return-void

    :cond_0
    invoke-direct {p0}, Lo8/k;->X()V

    return-void
.end method

.method public Y(Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lo8/k;->b:Lcom/miui/gamebooster/service/MiuiVoiceChangeCallback;

    return-void
.end method

.method public Z()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo8/k;->i0(Z)V

    invoke-direct {p0}, Lo8/k;->o0()V

    :try_start_0
    invoke-static {}, Lo8/k$g;->d()V

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->T1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VoiceChangeCore"

    const-string v2, "release remote voicechange error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lo8/k;->a0()V

    invoke-virtual {p0}, Lo8/k;->p0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    invoke-static {}, Lo8/k;->b0()V

    return-void
.end method

.method public c0(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->S(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d0(Ljava/lang/String;Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->h6(Ljava/lang/String;Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public f0()V
    .locals 0

    invoke-direct {p0}, Lo8/k;->o0()V

    invoke-static {}, La8/j2;->m()V

    return-void
.end method

.method public g0(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lo8/k$c;

    invoke-direct {v0, p0, p2, p1}, Lo8/k$c;-><init>(Lo8/k;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Ls5/a;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "VoiceChangeCore"

    if-nez v0, :cond_0

    const-string v0, "bindVpnSdkService: not in gamemode"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/j2;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/o0;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bindVpnSdkService: invalid!!!"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->shieldVpnService(Landroid/content/Context;)V

    invoke-static {}, La8/j2;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo8/k;->S()V

    invoke-direct {p0}, Lo8/k;->v()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->isVpnServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "bindVpnSdkService: vpnservice is disabled"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindVpnSdkService: mMiuiVpnSdkService = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lo8/k;->g:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lo8/k;->m0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v3, p0, Lo8/k;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    const-string v0, "bindVpnSdkService running"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.vpnsdkmanager.SDK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/common/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lo8/k;->n:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v1, v0, v3, v2, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lo8/k;->g:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public p0()V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/j2;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La8/o0;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo8/k;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v2, :cond_1

    const-string v2, "VoiceChangeCore"

    const-string v3, "unbind voice service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo8/k;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    iput-object v1, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "VoiceChangeCore"

    const-string v4, "unbindVpnSdkService"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :goto_2
    iput-object v1, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public r()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->W2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public s0()Z
    .locals 2

    invoke-direct {p0}, Lo8/k;->F()I

    move-result v0

    const/4 v1, 0x5

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

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

.method public u(Z)[S
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->c2(Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lo8/k;->p([B)[S

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [S

    return-object p1
.end method

.method public u0()V
    .locals 3

    iget v0, p0, Lo8/k;->k:I

    iget v1, p0, Lo8/k;->j:I

    const-string v2, "VoiceChangeCore"

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lo8/k;->t()V

    const-string v0, "do authentication when page attach!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lo8/k;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo8/k;->l:Z

    invoke-direct {p0}, Lo8/k;->q0()V

    const-string v0, "do authentication when page attach..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v0, 0x320

    invoke-direct {p0, v0, v1}, Lo8/k;->s(J)V

    return-void
.end method

.method public v0(Z[S)V
    .locals 1

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/j2;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo8/k;->e:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lo8/k;->j0([S)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->h7(Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/d0;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, La8/d0;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo8/k;->P()Lcom/miui/gamebooster/voicechanger/model/a;

    move-result-object v0

    iput-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    :cond_0
    iget-object v0, p0, Lo8/k;->f:Lcom/miui/gamebooster/voicechanger/model/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/voicechanger/model/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method
