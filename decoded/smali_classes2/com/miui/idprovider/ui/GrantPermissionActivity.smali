.class public final Lcom/miui/idprovider/ui/GrantPermissionActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/AppOpsManager;

.field private c:I

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c0(Lcom/miui/idprovider/ui/GrantPermissionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/idprovider/ui/GrantPermissionActivity;->d0(Lcom/miui/idprovider/ui/GrantPermissionActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final d0(Lcom/miui/idprovider/ui/GrantPermissionActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private final e0(Z)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Loj/t;->a:Loj/t;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x3

    new-array v0, v0, [Loj/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->d:Ljava/lang/String;

    const-string v3, "app_name"

    invoke-static {v3, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    const-string v2, "mCallingPackage"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    const-string v4, "app_package"

    invoke-static {v4, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    const-string v5, "\u5141\u8bb8"

    goto :goto_0

    :cond_1
    const-string v5, "\u62d2\u7edd"

    :goto_0
    const-string v6, "click_content"

    invoke-static {v6, v5}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v0}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "1127.35.0.1.35764"

    invoke-static {v1, v0}, Lmb/b;->g(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->b:Landroid/app/AppOpsManager;

    const-string v1, "mAppOpsManager"

    if-nez v0, :cond_2

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    iget-object v5, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3
    iget v6, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->c:I

    const/16 v7, 0x2735

    xor-int/lit8 v8, p1, 0x1

    invoke-static {v0, v5, v6, v7, v8}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->b:Landroid/app/AppOpsManager;

    if-nez v0, :cond_4

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_1
    iget v1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->c:I

    const/16 v2, 0x2736

    xor-int/2addr p1, v4

    invoke-static {v0, v3, v1, v2, p1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->b:Landroid/app/AppOpsManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/idprovider/ui/GrantPermissionActivity;->e0(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lv9/d;->g()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    :cond_2
    const-class p1, Landroid/app/Activity;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getLaunchedFromUid"

    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, v1}, Lcom/miui/permission/support/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iput p1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->c:I

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    :cond_5
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getSystemService(AppOpsManager::class.java)"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->b:Landroid/app/AppOpsManager;

    sget-object p1, Lv9/d;->a:Lv9/d;

    invoke-virtual {p1, p0}, Lv9/d;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0, v0}, Lcom/miui/idprovider/ui/GrantPermissionActivity;->e0(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->b:Landroid/app/AppOpsManager;

    if-nez p1, :cond_7

    const-string p1, "mAppOpsManager"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_7
    iget-object v1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    const-string v2, "mCallingPackage"

    if-nez v1, :cond_8

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_8
    iget v4, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->c:I

    const/16 v5, 0x2736

    invoke-static {p1, v1, v4, v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x5

    const/4 v4, 0x1

    if-eq p1, v1, :cond_a

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v0, v4

    :goto_2
    const-string p1, "REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Loj/t;->a:Loj/t;

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_a
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x2

    if-nez p1, :cond_b

    invoke-static {p0}, Lx4/y;->m(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_b

    move p1, v4

    goto :goto_3

    :cond_b
    move p1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07090f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    if-nez v7, :cond_c

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v7, v3

    :cond_c
    invoke-static {v6, v7}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->d:Ljava/lang/String;

    new-instance v6, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v7, 0x7f130023

    invoke-direct {v6, p0, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPreferLandscape(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v6, 0x7f12116d

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->d:Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v6, 0x7f080e62

    invoke-virtual {p1, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableEnterAnim(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v6, Lt9/f;

    invoke-direct {v6, p0}, Lt9/f;-><init>(Lcom/miui/idprovider/ui/GrantPermissionActivity;)V

    invoke-virtual {p1, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v5, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconSize(II)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v5, 0x7f120470

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v5, 0x7f12046b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, p0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    new-array p1, v1, [Loj/l;

    iget-object v1, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->d:Ljava/lang/String;

    const-string v5, "app_name"

    invoke-static {v5, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/miui/idprovider/ui/GrantPermissionActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v3, v0

    :goto_4
    const-string v0, "app_package"

    invoke-static {v0, v3}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "1127.35.0.1.35763"

    invoke-static {v0, p1}, Lmb/b;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
