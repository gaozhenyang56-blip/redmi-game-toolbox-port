.class public final Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionAppsModifyActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionAppsModifyActivity.kt\ncom/miui/permcenter/permissions/PermissionAppsModifyActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,1023:1\n26#2,12:1024\n*S KotlinDebug\n*F\n+ 1 PermissionAppsModifyActivity.kt\ncom/miui/permcenter/permissions/PermissionAppsModifyActivity\n*L\n101#1:1024,12\n*E\n"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

.field private b:Lcom/miui/permcenter/AppPermissionInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private final d0(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->d:Ljava/lang/String;

    invoke-static {p0, v1}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v1, 0x7f0e0416

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_permission_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.miui.permcenter.AppPermissionInfo"

    invoke-static {v2, v3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/miui/permcenter/AppPermissionInfo;

    iput-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->b:Lcom/miui/permcenter/AppPermissionInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    iput-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->d:Ljava/lang/String;

    :cond_1
    const-string v2, "permission_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->c:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "group_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->e:Ljava/lang/Integer;

    const-string v2, "permission_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Long>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Long> }"

    invoke-static {v1, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->b:Lcom/miui/permcenter/AppPermissionInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_6

    new-instance p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-direct {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b02a3

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    if-nez v1, :cond_5

    const-string v1, "permissionAppsModifyFragment"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v4, v1

    :goto_1
    invoke-virtual {p1, v0, v4}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_6
    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->e:Ljava/lang/Integer;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "permissionIds[0]"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/miui/permcenter/n;->i(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->c:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;->d0(Ljava/lang/String;)V

    return-void
.end method
