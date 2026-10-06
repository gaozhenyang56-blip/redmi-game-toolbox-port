.class public final Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMonitoredAppSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonitoredAppSettingsActivity.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n+ 3 FragmentTransaction.kt\nandroidx/fragment/app/FragmentTransactionKt\n*L\n1#1,117:1\n26#2,6:118\n32#2,6:129\n39#3,5:124\n*S KotlinDebug\n*F\n+ 1 MonitoredAppSettingsActivity.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsActivity\n*L\n27#1:118,6\n27#1:129,6\n29#1:124,5\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/s;->C(Z)Landroidx/fragment/app/s;

    const v0, 0x1020002

    const-class v1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroidx/fragment/app/s;->e(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    const-string v1, "add(containerViewId, F::class.java, args, tag)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_1
    return-void
.end method
