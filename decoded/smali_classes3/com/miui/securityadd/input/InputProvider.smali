.class public Lcom/miui/securityadd/input/InputProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static d:Z = true

.field private static e:Z = true

.field public static f:I

.field public static g:I


# instance fields
.field private a:Landroid/database/ContentObserver;

.field private b:Landroid/database/ContentObserver;

.field private c:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ldf/h;->v()I

    move-result v0

    sput v0, Lcom/miui/securityadd/input/InputProvider;->f:I

    invoke-static {}, Ldf/h;->z()I

    move-result v0

    sput v0, Lcom/miui/securityadd/input/InputProvider;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/miui/securityadd/input/InputProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/securityadd/input/InputProvider$a;-><init>(Lcom/miui/securityadd/input/InputProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securityadd/input/InputProvider;->a:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/securityadd/input/InputProvider$b;

    invoke-direct {v0, p0, v1}, Lcom/miui/securityadd/input/InputProvider$b;-><init>(Lcom/miui/securityadd/input/InputProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securityadd/input/InputProvider;->b:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/securityadd/input/InputProvider$c;

    invoke-direct {v0, p0, v1}, Lcom/miui/securityadd/input/InputProvider$c;-><init>(Lcom/miui/securityadd/input/InputProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securityadd/input/InputProvider;->c:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/securityadd/input/InputProvider;->d:Z

    return p0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/securityadd/input/InputProvider;->e:Z

    return p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityadd/input/InputProvider;->a:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_left_function"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityadd/input/InputProvider;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_right_function"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityadd/input/InputProvider;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enable_quick_paste_cloud"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityadd/input/InputProvider;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InputProvider"

    if-eqz p3, :cond_1a

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "saveClipboardString"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0, p3}, Ldf/h;->d0(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "saveClipboardStringNew"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v0, p3}, Ldf/h;->f0(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v2, "saveClipboardCipherText"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v0, p3}, Ldf/h;->e0(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v2, "getClipboardList"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {v0}, Ldf/h;->h(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v2, "clearOldClipboardContent"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {v0}, Ldf/h;->d(Landroid/content/Context;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v2, "saveCloudClipboardContent"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "receive content from mi cloud is null."

    const-string v4, ""

    const-string v5, "content"

    const-string v6, "com.miui.micloudsync"

    const-string v7, "receive content from mi cloud."

    if-eqz v2, :cond_e

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    invoke-virtual {p3, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_1
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_c
    sget-boolean v1, Lcom/miui/securityadd/input/InputProvider;->d:Z

    sget-boolean v3, Lcom/miui/securityadd/input/InputProvider;->e:Z

    invoke-static {v0, v2, v1, v3}, Ldf/h;->c0(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v2, "setCloudClipboardContent"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    invoke-virtual {p3, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_1

    :cond_10
    sget-boolean v1, Lcom/miui/securityadd/input/InputProvider;->d:Z

    sget-boolean v3, Lcom/miui/securityadd/input/InputProvider;->e:Z

    invoke-static {v0, v2, v1, v3}, Ldf/h;->b0(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_12
    const-string v1, "input_method_analytics"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0, p3}, Ldf/h;->X(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_13
    const-string v1, "setClipboardTipsNeedShowFlag"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-static {v0, p3}, Ldf/h;->a0(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_15
    const-string v1, "getCloudContent"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-static {v0}, Ldf/h;->k(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_17
    const-string v1, "writeSystemValueBySecurityCenter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p1, v0, p0}, Ldf/h;->K(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentProvider;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_18
    invoke-static {v0, p3}, Ldf/h;->D(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_2
    const-string p3, "extras or context is null"

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldf/h;->P(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/securityadd/input/InputProvider;->d:Z

    invoke-static {v0}, Ldf/h;->s(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/miui/securityadd/input/InputProvider;->e:Z

    invoke-direct {p0, v0}, Lcom/miui/securityadd/input/InputProvider;->c(Landroid/content/Context;)V

    invoke-static {v0}, Ldf/h;->e(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
