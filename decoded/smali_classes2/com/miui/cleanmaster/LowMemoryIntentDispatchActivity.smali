.class public Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/hardware/display/DisplayManager;

.field private c:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private d:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->a:Z

    return p1
.end method

.method static synthetic d(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "000029"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "level"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lc4/f;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {p0}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.cleanmaster.action.START_LOW_MEMORY_CLEAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {p0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lc4/j;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "level"

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LowMemoryDispatch"

    const-string v2, "lunchCleanerCleanServiceGlobal: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private h()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120cde

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120cdc

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120cdb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$a;-><init>(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)V

    const v3, 0x7f120cdd

    invoke-virtual {v0, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LowMemoryDispatch"

    const-string v3, "showLowMemoryWarningDialog error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/y;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->a:Z

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->b:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity$b;-><init>(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)V

    iput-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->b:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "LowMemoryDispatch"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.miui.securitycenter.LunchCleanMaster"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v1, :cond_4

    const-string v1, "com.miui.securitycenter.LunchCleaner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.miui.securitycenter.action.START_LOW_MEMORY_CLEAN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    goto :goto_4

    :cond_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->g()V

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->f()V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->h()V

    goto :goto_4

    :cond_4
    :goto_0
    const-string p1, "00008"

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_7

    const-string v0, "com.miui.cleanmaster"

    invoke-static {p0, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaomi.market"

    const-string v1, "com.xiaomi.market.ui.LocalAppsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_7
    :goto_1
    const-string v0, "miui.intent.action.GARBAGE_DEEPCLEAN"

    goto :goto_2

    :cond_8
    const-string v0, "miui.intent.action.GARBAGE_CLEANUP"

    :goto_2
    invoke-static {p0, v0, p1, v2, v1}, Lc4/j;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :catch_0
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "LowMemoryDispatch"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->b:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    return-void
.end method
