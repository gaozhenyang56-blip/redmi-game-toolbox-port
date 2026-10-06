.class public final Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$a;,
        Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDevicePermissionSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevicePermissionSettingsActivity.kt\ncom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,67:1\n26#2,12:68\n*S KotlinDebug\n*F\n+ 1 DevicePermissionSettingsActivity.kt\ncom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity\n*L\n24#1:68,12\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$a;

    return-void
.end method

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

    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b02a3

    new-instance v1, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;

    invoke-direct {v1}, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity$DevicePermissionSettingsFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "from_security_center"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f120b78

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
