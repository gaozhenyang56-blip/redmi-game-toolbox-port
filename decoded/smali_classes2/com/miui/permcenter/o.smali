.class public Lcom/miui/permcenter/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/o$a;
    }
.end annotation


# static fields
.field private static A:I

.field private static final B:Z

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/content/pm/PackageInfo;

.field private static final c:I

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field private static final j:Z

.field public static final k:Z

.field public static final l:Z

.field public static final m:Z

.field public static final n:Z

.field public static final o:Z

.field public static final p:Z

.field public static final q:Z

.field public static final r:Z

.field public static final s:Z

.field public static final t:Z

.field public static final u:Z

.field public static final v:Z

.field public static final w:Z

.field public static final x:Z

.field public static final y:Z

.field public static final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "vermeer"

    const-string v1, "duchamp"

    const-string v2, "manet"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/o;->a:Ljava/util/List;

    invoke-static {}, Lcom/miui/permcenter/o;->e()Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/o;->b:Landroid/content/pm/PackageInfo;

    invoke-static {}, Lcom/miui/permcenter/o;->d()I

    move-result v0

    sput v0, Lcom/miui/permcenter/o;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x73

    if-lt v0, v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/miui/permcenter/o;->d:Z

    const/16 v3, 0x78

    if-lt v0, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/miui/permcenter/o;->e:Z

    const/16 v3, 0x7c

    if-lt v0, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    sput-boolean v3, Lcom/miui/permcenter/o;->f:Z

    const/16 v3, 0x9c

    const/16 v4, 0x1d

    if-lt v0, v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_3

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_3

    invoke-static {}, Ldb/c;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    sput-boolean v3, Lcom/miui/permcenter/o;->g:Z

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ldb/c;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    sput-boolean v3, Lcom/miui/permcenter/o;->h:Z

    const-string v3, "ro.radio.noril"

    invoke-static {v3, v2}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/miui/permcenter/o;->i:Z

    invoke-static {}, Lcom/miui/permcenter/o;->B()Z

    move-result v5

    sput-boolean v5, Lcom/miui/permcenter/o;->j:Z

    const/16 v6, 0xa0

    if-lt v0, v6, :cond_6

    if-eqz v3, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_6

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_6

    invoke-static {}, Ldb/c;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    sput-boolean v3, Lcom/miui/permcenter/o;->k:Z

    invoke-static {}, Ldb/c;->d()Z

    move-result v3

    const/16 v4, 0xaa

    if-eqz v3, :cond_7

    invoke-static {}, Ldb/c;->h()Z

    move-result v3

    if-eqz v3, :cond_7

    if-lt v0, v4, :cond_7

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v3, v5, :cond_7

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_7

    invoke-static {}, Lcom/miui/permcenter/o;->q()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    sput-boolean v3, Lcom/miui/permcenter/o;->l:Z

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_a

    invoke-static {}, Ldb/c;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_8

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "cetus"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    if-lt v0, v4, :cond_a

    :cond_9
    invoke-static {}, Lcom/miui/permcenter/o;->F()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    sput-boolean v3, Lcom/miui/permcenter/o;->m:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/permcenter/o;->J(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/miui/permcenter/o;->n:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/permcenter/o;->H(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/miui/permcenter/o;->o:Z

    const/16 v3, 0xb1

    if-lt v0, v3, :cond_b

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_8

    :cond_b
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/miui/permcenter/o;->p:Z

    invoke-static {}, Lcom/miui/permcenter/o;->m()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->q:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/o;->L(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->r:Z

    invoke-static {}, Lcom/miui/permcenter/o;->D()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->s:Z

    invoke-static {}, Lcom/miui/permcenter/o;->s()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->t:Z

    invoke-static {}, Lcom/miui/permcenter/o;->z()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->u:Z

    invoke-static {}, Lcom/miui/permcenter/o;->t()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->v:Z

    invoke-static {}, Lcom/miui/permcenter/o;->G()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->w:Z

    invoke-static {}, Lcom/miui/permcenter/o;->I()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->x:Z

    invoke-static {}, Lcom/miui/permcenter/o;->y()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->y:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_c

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    move v1, v2

    :goto_9
    sput-boolean v1, Lcom/miui/permcenter/o;->z:Z

    const/4 v0, -0x1

    sput v0, Lcom/miui/permcenter/o;->A:I

    invoke-static {}, Lcom/miui/permcenter/o;->c()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/o;->B:Z

    return-void
.end method

.method public static A()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/permcenter/o;->M()Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/miui/permcenter/o;->d:Z

    return v0
.end method

.method private static B()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static C()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/permcenter/o;->B:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "rothko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static D()Z
    .locals 6

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v2, 0x80

    const-string v3, "com.miui.packageinstaller"

    invoke-static {v0, v3, v2}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "security_space_version"

    invoke-static {v0, v2}, Lx4/f1;->l(Landroid/content/pm/PackageInfo;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.miui.packageInstaller.provider.ProhibitInstallOtherAppProvider"

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supportInstallManagement-installAbility: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isProviderExists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TAG"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/permcenter/o;->s()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "packageinstaller_guide_install_permisson_merge_status"

    invoke-static {p0, v1, v0}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/miui/permcenter/o;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/permcenter/o;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportInstallManagement2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PrivacyFeature"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static F()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "vendor"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v2, "system/lib64/libmediastub.so"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "system_ext/lib64/libmediaimpl.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private static G()Z
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.lbe.security.miui"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "miui.supportMultiUserPermission"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static H(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.systemui"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "miui.addOngoingNotifPermissionToMiui"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static I()Z
    .locals 2

    sget-object v0, Lcom/miui/permcenter/o;->b:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "miui.supportPermissionGroup"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static J(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.lbe.security.miui"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "miui.supportPermissionInstruction"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static K()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/permcenter/o;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static L(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.lbe.security.miui"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "miui.supportSmartAutoStart"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "PrivacyFeature"

    const-string v1, "initData: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static M()Z
    .locals 3

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/permcenter/o;->A:I

    if-gez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.android.systemui"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "miui.supportFlaresDot"

    invoke-static {v0, v1}, Lx4/f1;->l(Landroid/content/pm/PackageInfo;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/permcenter/o;->A:I

    :cond_0
    sget v0, Lcom/miui/permcenter/o;->A:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static N(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/miui/permcenter/o;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static O()Z
    .locals 1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clipboard_show_access_notifications"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static b()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.lbe.security.miui"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "miui.supportSystemBlurLocation"

    invoke-static {v0, v1}, Lx4/f1;->J(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lmiui/security/SecurityManager;

    const-string v2, "unmountAppIsolate"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static d()I
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "com.lbe.security.miui"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v2
.end method

.method private static e()Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lbe.security.miui"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "hide_protect_app_del_img2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.android.providers.media.module"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v4, "supportGlobalTrash"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {p0, v1}, Ljg/a;->e(Landroid/content/Context;Z)V

    return v3

    :cond_1
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public static h()Z
    .locals 2

    invoke-static {}, Lcom/miui/permcenter/o;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.mi_isolated"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static i()V
    .locals 0

    return-void
.end method

.method public static j()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.miui.packageinstaller"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "support_risk_app_permission_detailed_control_v2"

    invoke-static {v0, v1}, Lx4/f1;->J(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportRiskAppControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacyFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static k()Z
    .locals 3

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastU()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x22

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/miui/permcenter/o;->a:Ljava/util/List;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "safety_center"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "isSafetyCenterEnabled"

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private static m()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.lbe.security.miui"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "miui.labOnlyControlMiuiBlur"

    invoke-static {v0, v1}, Lx4/f1;->J(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static n()Z
    .locals 3

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/permcenter/o;->A:I

    if-gez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.android.systemui"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "miui.supportFlaresDot"

    invoke-static {v0, v1}, Lx4/f1;->l(Landroid/content/pm/PackageInfo;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/permcenter/o;->A:I

    :cond_0
    sget v0, Lcom/miui/permcenter/o;->A:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static o()Z
    .locals 1

    invoke-static {}, Lcom/miui/permcenter/o;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/permcenter/o;->O()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static p()Z
    .locals 1

    invoke-static {}, Lcom/miui/permcenter/o;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/o;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, Lcom/miui/permcenter/o;->i:Z

    return v0
.end method

.method public static r(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clipboard_show_access_notifications"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static s()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.lbe.security.miui"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "miui.supportInstallerCharge"

    invoke-static {v0, v1}, Lx4/f1;->J(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportAppChainManagement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static t()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/miui/permcenter/o;->s:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/permcenter/o;->t:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/permcenter/o;->u:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/permcenter/o;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static u(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/miui/permcenter/o;->q:Z

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/miui/permcenter/o;->N(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-static {}, Lxc/k;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v1, 0x273b

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, v3, p1}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2

    :cond_4
    invoke-static {}, Lxc/k;->b()Z

    move-result p0

    return p0
.end method

.method public static v()Z
    .locals 3

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "yunluo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/miui/permcenter/o;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/miui/permcenter/o;->w()Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 3

    invoke-static {}, Ldb/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "com.milink.service"

    invoke-static {v0, v2, v1}, Lx4/f1;->o(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "miui.supportConnectionSettingsPage"

    invoke-static {v0, v1}, Lx4/f1;->J(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "supportDistFiles"

    invoke-static {p0, v1, v0}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static y()Z
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.lbe.security.miui"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "miui.supportDeleteStartActivityRule"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private static z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
