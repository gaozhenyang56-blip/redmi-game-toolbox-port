.class public Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;,
        Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;,
        Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;
    }
.end annotation


# static fields
.field private static final I:Z


# instance fields
.field private A:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;

.field private B:Ljava/lang/StringBuilder;

.field private C:Ljava/lang/StringBuilder;

.field private D:Z

.field private E:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:[Ljava/lang/String;

.field private H:[Ljava/lang/String;

.field private a:Z

.field private b:Landroid/content/pm/PackageInfo;

.field private c:Landroid/content/pm/ApplicationInfo;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:[Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field public u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Locale;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.miui.restrict_imei"

    const-string v1, "0"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->I:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    return-void
.end method

.method private A0()Z
    .locals 14

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->v:Ljava/lang/String;

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->i:Ljava/lang/String;

    const-string v1, "main_purpose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->e:Ljava/lang/String;

    const-string v1, "all_purpose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->f:Ljava/lang/String;

    const-string v1, "no_privacy_declare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->g:Z

    const-string v1, "use_network"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->h:Z

    const-string v1, "runtime_perm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    const-string v1, "runtime_perm_desc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n:[Ljava/lang/String;

    const-string v1, "optional_perm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    const-string v1, "optional_perm_desc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o:[Ljava/lang/String;

    const-string v1, "optional_perm_show"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->m:Z

    const-string v1, "user_agreement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->p:Ljava/lang/String;

    const-string v1, "privacy_policy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->q:Ljava/lang/String;

    const-string v1, "mandatory_permission"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r:Z

    const-string v1, "theme_analytics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->s:Z

    const-string v1, "show_read_phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->t:Z

    const-string v1, "all_link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, -0x1

    const-string v6, "SystemAppPDA"

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n:[Ljava/lang/String;

    if-eqz v7, :cond_1

    array-length v8, v1

    array-length v7, v7

    if-ne v8, v7, :cond_d

    :cond_1
    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o:[Ljava/lang/String;

    if-eqz v8, :cond_2

    array-length v7, v7

    array-length v8, v8

    if-eq v7, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n:[Ljava/lang/String;

    invoke-direct {p0, v1, v7, v2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->g0([Ljava/lang/String;[Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    const/16 v8, 0x1080

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->b:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->c:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.SYSTEM_PERMISSION_DECLARE_NO_OPTIONAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->m:Z

    iput-object v4, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o:[Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->x0()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->g0([Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->OptionalPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->c:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->d:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v1, v0

    if-ne v1, v3, :cond_5

    aget-object v0, v0, v2

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r:Z

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->s:Z

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    const-string v1, "cta_grant_permissions"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x3

    const-string v9, ";"

    if-nez v7, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/util/ArrayMap;

    array-length v10, v1

    invoke-direct {v7, v10}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->E:Landroid/util/ArrayMap;

    array-length v7, v1

    move v10, v2

    :goto_1
    if-ge v10, v7, :cond_7

    aget-object v11, v1, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->E:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const-string v1, "cta_grant_optional_permissions"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/util/ArrayMap;

    array-length v10, v1

    invoke-direct {v7, v10}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    iput-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->G:[Ljava/lang/String;

    array-length v7, v1

    move v10, v2

    :goto_2
    if-ge v10, v7, :cond_a

    aget-object v11, v1, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    sget-object v12, Lg4/b;->a:Lg4/b;

    iget-object v13, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->b:Landroid/content/pm/PackageInfo;

    invoke-virtual {v12, p0, v13, v11}, Lg4/b;->j(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_3

    :cond_8
    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_3
    invoke-virtual {v12, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    const-string v1, "cta_optional_permissions_desc"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_1
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lxc/e;->a:Lxc/e;

    invoke-virtual {v4, v1, v0}, Lxc/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->H:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "verifyIntentData: "

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->H:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->H:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_c

    :goto_5
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return v2

    :cond_c
    return v3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get application info exception!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_d
    :goto_6
    const-string v0, "lack of necessary information!"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static synthetic d0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->v0(Landroidx/recyclerview/widget/RecyclerView;Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->w0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private g0([Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->I:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    sget-object v2, Lxc/d;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    :goto_1
    move v5, v4

    :goto_2
    array-length v6, p1

    if-ge v4, v6, :cond_7

    if-eqz v2, :cond_4

    sget-object v6, Lxc/d;->h:Ljava/util/Set;

    aget-object v7, p1, v4

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->t:Z

    if-nez v6, :cond_4

    aget-object v6, p1, v4

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    aget-object v6, p1, v4

    invoke-static {p0, v6}, Lxc/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v5, v3

    goto :goto_3

    :cond_6
    aget-object v6, p1, v4

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, p2, v4

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p3, :cond_8

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->o:[Ljava/lang/String;

    goto :goto_4

    :cond_8
    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n:[Ljava/lang/String;

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic h0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->A0()Z

    move-result p0

    return p0
.end method

.method static synthetic i0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->initView()V

    return-void
.end method

.method private initView()V
    .locals 15
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const v0, 0x7f0b0340

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02bc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p0, v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->y0(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070314

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0706db

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3, v6, v8, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    const v2, 0x7f0b02ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const v3, 0x7f0b0782

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p0, v3}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->y0(Landroid/content/Context;Landroid/view/View;)V

    :cond_2
    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    if-eqz v7, :cond_5

    array-length v7, v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->s:Z

    if-eqz v7, :cond_3

    const v7, 0x7f121916

    :goto_1
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->h:Z

    if-eqz v7, :cond_4

    const v7, 0x7f121922

    goto :goto_1

    :cond_4
    const v7, 0x7f121923

    goto :goto_1

    :cond_5
    iget-boolean v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->h:Z

    if-eqz v7, :cond_6

    const v7, 0x7f121924

    goto :goto_1

    :cond_6
    const-string v7, ""

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->B:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->B:Ljava/lang/StringBuilder;

    const v10, 0x7f121919

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->i:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->d:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->i:Ljava/lang/String;

    :goto_3
    aput-object v12, v11, v5

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->e:Ljava/lang/String;

    aput-object v12, v11, v6

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_8
    iget-object v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->B:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->f:Ljava/lang/String;

    :goto_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->g:Z

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    if-eqz v7, :cond_e

    array-length v7, v7

    if-eqz v7, :cond_e

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const-string v8, "\u3001"

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v6

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v10, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    invoke-static {p0, v11}, Lxc/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v5

    goto :goto_5

    :cond_c
    iget-object v7, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    if-eqz v7, :cond_e

    array-length v10, v7

    move v11, v5

    move v12, v6

    :goto_6
    if-ge v11, v10, :cond_e

    aget-object v13, v7, v11

    if-nez v12, :cond_d

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    invoke-static {p0, v13}, Lxc/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move v12, v5

    goto :goto_6

    :cond_e
    new-instance v7, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;

    invoke-direct {v7, p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V

    const v8, 0x7f0b02bd

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f0b08f7

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f121921

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v11, v14, v5

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v11, Lcc/d;

    new-instance v12, Lcc/c0;

    invoke-direct {v12, p0}, Lcc/c0;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V

    invoke-direct {v11, v12}, Lcc/d;-><init>(Lcc/c;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f121920

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v11, v14, v5

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    iget-boolean v11, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz v11, :cond_11

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "en"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    const v8, 0x7f080eb1

    goto :goto_8

    :cond_12
    const v8, 0x7f080eb0

    :goto_8
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v8, Lcom/miui/permcenter/permissions/n;

    invoke-direct {v8, p0, v2, v7, v3}, Lcom/miui/permcenter/permissions/n;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;Landroidx/recyclerview/widget/RecyclerView;Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-boolean v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz v3, :cond_13

    invoke-virtual {v2, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_a

    :cond_13
    invoke-virtual {v2, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :goto_a
    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->x:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_14
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->x:Ljava/lang/String;

    :goto_b
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_15
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0x7f121925

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->q:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_16
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f12192b

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->p:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_17
    const v1, 0x7f121918

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->p:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->q:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :goto_c
    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07050b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    new-instance v1, Lcc/d;

    new-instance v2, Lcc/d0;

    invoke-direct {v2, p0}, Lcc/d0;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V

    invoke-direct {v1, v2}, Lcc/d;-><init>(Lcc/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0b02c0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b02bb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->r:Z

    if-eqz v1, :cond_19

    const v1, 0x7f1207f8

    goto :goto_d

    :cond_19
    const v1, 0x7f121917

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-nez v0, :cond_23

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-lt v0, v9, :cond_1a

    move v0, v6

    goto :goto_e

    :cond_1a
    move v0, v5

    :goto_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1b

    move v1, v6

    goto :goto_f

    :cond_1b
    move v1, v5

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    const v4, 0x7f0718f0

    const v7, 0x7f0708dc

    if-eqz v3, :cond_1c

    const v3, 0x7f07097a

    goto :goto_11

    :cond_1c
    if-nez v0, :cond_1e

    iget-boolean v3, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz v3, :cond_1d

    goto :goto_10

    :cond_1d
    move v3, v4

    goto :goto_11

    :cond_1e
    :goto_10
    move v3, v7

    :goto_11
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_21

    if-nez v1, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    int-to-float v1, v1

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz v0, :cond_20

    :cond_1f
    move v4, v7

    :cond_20
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    :cond_21
    const v0, 0x7f0b01b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070495

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object v3, v0

    check-cast v3, Lcom/miui/permcenter/permissions/ButtonPanel;

    invoke-virtual {v3, v6}, Lcom/miui/permcenter/permissions/ButtonPanel;->setForceVertical(Z)V

    goto :goto_12

    :cond_22
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    move-object v3, v0

    check-cast v3, Lcom/miui/permcenter/permissions/ButtonPanel;

    invoke-virtual {v3, v5}, Lcom/miui/permcenter/permissions/ButtonPanel;->setForceVertical(Z)V

    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_23
    return-void
.end method

.method static synthetic j0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->z0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->y0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    return p0
.end method

.method static synthetic n0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->B:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->n:[Ljava/lang/String;

    return-object p0
.end method

.method private synthetic u0(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->z0()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic v0(Landroidx/recyclerview/widget/RecyclerView;Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;Landroid/widget/LinearLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->C:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->t0(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-nez p1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$c;->m(Ljava/lang/String;)V

    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic w0(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lx4/y;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    const-string v1, "com.android.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p0, p1}, Lxc/z;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private x0()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->k:[Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->j:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->b:Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/miui/permission/RequiredPermissionsUtil;->retrieveRequiredPermissions(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->b:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    sget-object v6, Lxc/d;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    sget-object v6, Lxc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->parseOptionalPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemAppPDA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private y0(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private z0()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/miui/combinepermission/grantpermission/CombinePermissionActivity;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->G:[Ljava/lang/String;

    const-string v2, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->H:[Ljava/lang/String;

    const-string v2, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES_DESC"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->G:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->G:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "miui.intent.extra.KEY_REQUEST_PERMISSIONS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    const-string v3, "miui.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lxc/e;->a:Lxc/e;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3, p2}, Lxc/e;->d(Landroid/content/Intent;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "SystemAppPDA"

    const v2, 0x7f0b02c0

    if-ne v0, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user agreed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->E:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    sget-object v1, Lxc/e;->a:Lxc/e;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lxc/e;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->F:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    sget-object v1, Lxc/e;->a:Lxc/e;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lxc/e;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-static {v0, p1}, Lxc/d;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b02bb

    if-ne p1, v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user rejected!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->v:Ljava/lang/String;

    const-string v0, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x29a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Lxc/d;->b(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->w:Ljava/util/Locale;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/app/c;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lx4/y;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lsl/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    iget-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->z:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemAppPDA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/c;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->w:Ljava/util/Locale;

    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->w:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SystemAppPDA"

    const-string v0, "finish for local changed, need new intent"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "show_locked"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    const p1, 0x7f0e003c

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {}, Lx4/y;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lsl/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->D:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-static {}, Lx4/y;->f()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->u:Ljava/lang/String;

    new-instance p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;

    invoke-direct {p1, p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->A:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->A:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;

    const/4 v2, 0x4

    invoke-static {p0, v0, p1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;

    invoke-direct {p1, p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;-><init>(Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->z:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->A:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->z:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "SystemAppPDA"

    const-string v4, "windowDismissed"

    invoke-static {v3, v0, v4, v2, v1}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->z:Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemAppPDA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemAppPermissionDialogActivity;->w:Ljava/util/Locale;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected t0(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lt v2, v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ge v1, p1, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    return v0

    :cond_3
    return v3
.end method
