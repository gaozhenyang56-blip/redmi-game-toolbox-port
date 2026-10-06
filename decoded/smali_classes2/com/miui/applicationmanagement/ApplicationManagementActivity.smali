.class public final Lcom/miui/applicationmanagement/ApplicationManagementActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApplicationManagementActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationManagementActivity.kt\ncom/miui/applicationmanagement/ApplicationManagementActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,149:1\n26#2,12:150\n*S KotlinDebug\n*F\n+ 1 ApplicationManagementActivity.kt\ncom/miui/applicationmanagement/ApplicationManagementActivity\n*L\n36#1:150,12\n*E\n"
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
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;

    invoke-direct {p1}, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const-string v1, "beginTransaction()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0b02a3

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :cond_0
    return-void
.end method
