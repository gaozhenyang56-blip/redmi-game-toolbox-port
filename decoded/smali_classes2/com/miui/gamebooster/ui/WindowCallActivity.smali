.class public Lcom/miui/gamebooster/ui/WindowCallActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private f0(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    const-string v1, "key_currentbooster_pkg_uid"

    invoke-static {v1, p1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "com.tencent.mm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public d0(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "originating_uid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_1

    const v1, 0x7f010012

    const v3, 0x7f010013

    invoke-static {p0, v1, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {p1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object p1

    const-class v4, Landroid/content/ContextWrapper;

    const-string v8, "startActivityAsUser"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    aput-object p1, v2, v7

    invoke-static {v4, p0, v8, v3, v2}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
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

.method public e0(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "originating_uid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, La8/a0;->Q(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "gb_show_window"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Laf/a;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WindowCallActivity;->f0(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/WindowCallActivity;->d0(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/WindowCallActivity;->e0(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.gb_show_window"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "passby_intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
