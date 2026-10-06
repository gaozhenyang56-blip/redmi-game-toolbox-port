.class public Lcom/miui/applicationlock/TransitionHelper;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lc3/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lmiui/security/SecurityManager;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hasCommonPassword"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TransitionHelper"

    const-string v1, "isScreenLockOpen error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "not_home_start"

    const-string v1, "extra_data"

    const v2, 0x7f01008c

    const/4 v3, -0x1

    const-string v4, "external_app_name"

    const/4 v5, 0x1

    const-string v6, "key_page_index"

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    if-ne p2, v3, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->e:Lmiui/security/SecurityManager;

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v5}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->a:Lc3/d;

    invoke-virtual {p1, v7}, Lc3/d;->C(Z)V

    if-eqz p3, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :sswitch_2
    if-ne p2, v3, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->e:Lmiui/security/SecurityManager;

    iget-object p3, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, v5}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    :cond_0
    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->a:Lc3/d;

    invoke-virtual {p2, v7}, Lc3/d;->C(Z)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v7, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :sswitch_3
    if-ne p2, v3, :cond_1

    iget-boolean p1, p0, Lcom/miui/applicationlock/TransitionHelper;->f:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->e:Lmiui/security/SecurityManager;

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v5}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/applicationlock/TransitionHelper;->e:Lmiui/security/SecurityManager;

    iget-object p3, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, v5}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v7, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf9897 -> :sswitch_3
        0xf98a7 -> :sswitch_1
        0xf98b2 -> :sswitch_2
        0xf98b4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "TransitionHelper"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "enter_way"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->b:Ljava/lang/String;

    const-string v1, "000015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->b:Ljava/lang/String;

    const-string v1, "000012"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->b:Ljava/lang/String;

    const-string v1, "00002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.miui.securitycenter_com.miui.applicationlock_102"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "com.miui.securitycenter_com.miui.applicationlock_104"

    :goto_1
    invoke-static {p1}, Lc3/f;->f(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->b:Ljava/lang/String;

    invoke-static {p1}, La3/a;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->a:Lc3/d;

    const-string p1, "security"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->e:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "external_app_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/applicationlock/TransitionHelper;->a:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->l()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/applicationlock/TransitionHelper;->f:Z

    if-nez p1, :cond_5

    :try_start_0
    invoke-static {p0}, Lc3/f;->h(Landroid/content/Context;)V

    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_enterway"

    iget-object v3, p0, Lcom/miui/applicationlock/TransitionHelper;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const v0, 0xf98a7

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_data"

    const-string v1, "HappyCodingMain"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xf9897

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
