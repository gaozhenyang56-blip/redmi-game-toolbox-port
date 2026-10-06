.class public final Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDevicePermissionModifyActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevicePermissionModifyActivity.kt\ncom/miui/devicepermission/editpermission/DevicePermissionModifyActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,224:1\n26#2,12:225\n*S KotlinDebug\n*F\n+ 1 DevicePermissionModifyActivity.kt\ncom/miui/devicepermission/editpermission/DevicePermissionModifyActivity\n*L\n64#1:225,12\n*E\n"
    }
.end annotation


# instance fields
.field private a:Lz4/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v1, 0x7f0e012a

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "device_permission_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lz4/a;

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->a:Lz4/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "device_permission"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "device_item_position"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->c:Ljava/lang/Integer;

    const-string v1, " "

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->a:Lz4/a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Ldc/d;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez p1, :cond_3

    new-instance p1, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-direct {p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->d:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->a:Lz4/a;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->d:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b02a3

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->d:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    goto :goto_1

    :cond_3
    const-string v0, "save_permissionAction"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->e:Ljava/lang/Integer;

    const-string v0, "save_permissionFlag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;->f:Ljava/lang/Integer;

    :goto_1
    return-void
.end method
