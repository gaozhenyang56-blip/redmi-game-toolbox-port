.class public Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;
.super Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;
.source "SourceFile"

# interfaces
.implements Lwb/b;


# static fields
.field public static final n:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/content/pm/PackageInfo;

.field private f:Z

.field private g:Lcom/miui/permcenter/permissions/c;

.field private h:Lcom/miui/permcenter/permissions/a;

.field i:Z

.field j:Z

.field k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroidx/preference/Preference$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->l:Ljava/util/List;

    new-instance v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment$a;-><init>(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->m:Landroidx/preference/Preference$d;

    return-void
.end method

.method public static synthetic h0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;Lcc/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->v0(Lcc/g;)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;Lcom/miui/permcenter/permissions/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->w0(Lcom/miui/permcenter/permissions/c;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)Lcom/miui/permcenter/permissions/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    return-object p0
.end method

.method private m0(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n0(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission edit for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is restricted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Enterprise"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private o0(Ljava/util/List;Ljava/util/HashMap;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permission/PermissionGroupInfo;

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->s0(Ljava/lang/Long;Ljava/util/HashMap;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Lcom/miui/permission/PermissionGroupInfo;->setRelativePermissionIds(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private p0(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v2}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v3

    const/16 v4, 0x200

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v3

    const/16 v4, 0x400

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v3

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private q0(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    const-string p1, ""

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f120ed1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v7, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v2, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v2, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {p1, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const v1, 0x7f120ed0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v6, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v2, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {p1, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const v1, 0x7f120ecf

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {p1, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const v1, 0x7f120ece

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {p1, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private r0(Lcom/miui/permission/PermissionGroupInfo;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result p1

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide v1, 0x4000000000L

    const-string p1, "extra_permission_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12134c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_permission_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "com.miui.permcenter.settings.InvisibleModeActivity"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private s0(Ljava/lang/Long;Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x1000000000L

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x800000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x400000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Lxc/k;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x200000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v2}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v0

    sget-object v2, Lxc/m$a;->a:Lxc/m$a;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->i:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->k:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v3, v0}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->g0(JLjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lxc/m;->d(J)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method private t0(Landroid/content/Context;ZLjava/util/List;Landroid/content/pm/PackageInfo;JIILjava/lang/String;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "JII",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move-object/from16 v6, p9

    iget-boolean v7, v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->f:Z

    const/4 v8, 0x1

    if-nez v7, :cond_0

    iget-boolean v7, v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->i:Z

    if-eqz v7, :cond_e

    :cond_0
    if-nez p2, :cond_e

    if-eqz v2, :cond_e

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v8

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x6

    const/4 v14, 0x3

    if-eqz v12, :cond_a

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-eqz v11, :cond_3

    invoke-static/range {p5 .. p6}, Lxc/m;->d(J)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v11, p4

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v15, 0x21

    if-ge v12, v15, :cond_9

    const-string v12, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_1

    :cond_2
    move-object/from16 v11, p4

    goto :goto_6

    :cond_3
    move-object/from16 v11, p4

    :cond_4
    :goto_1
    if-eq v5, v14, :cond_6

    if-ne v5, v13, :cond_5

    invoke-static {v3, v4, v1, v6}, Lcom/miui/permcenter/l;->r(JLandroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v8

    :goto_3
    xor-int/2addr v9, v8

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-lt v10, v12, :cond_9

    const-wide/16 v15, 0x20

    cmp-long v10, v3, v15

    if-nez v10, :cond_9

    const-string v9, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    move/from16 v12, p8

    if-eqz v10, :cond_7

    invoke-static {v1, v9, v6, v12}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_7
    if-eq v5, v14, :cond_8

    if-eq v5, v13, :cond_8

    :goto_4
    move v15, v8

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    move v9, v15

    goto :goto_0

    :cond_9
    :goto_6
    move/from16 v12, p8

    goto/16 :goto_0

    :cond_a
    move-object/from16 v11, p4

    move/from16 v12, p8

    invoke-static/range {p5 .. p6}, Lxc/m;->d(J)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static/range {p5 .. p6}, Lxc/m;->c(J)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eq v5, v14, :cond_c

    if-ne v5, v13, :cond_b

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    move v15, v8

    :goto_8
    xor-int/lit8 v9, v15, 0x1

    goto/16 :goto_0

    :cond_d
    move v8, v9

    :cond_e
    return v8
.end method

.method private u0(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lx4/k1;->k(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private v0(Lcc/g;)V
    .locals 7

    invoke-virtual {p1}, Lcc/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppPermissionChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcc/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->h:Lcom/miui/permcenter/permissions/a;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcc/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcc/g;->d()I

    move-result v0

    iget v1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->d:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    iget-object v3, v3, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    iget-object v3, v3, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->m0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    iget-object p1, p1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result p1

    sget-object v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, p1}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->e(I)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/miui/permcenter/permissions/c;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    iget-object v0, v0, Lcom/miui/permcenter/permissions/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v3}, Lcom/miui/permission/PermissionGroupInfo;->isShowInFirstPage()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->m0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    if-eqz v6, :cond_9

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    iget-object p1, p1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-static {v5, p1}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result p1

    sget-object v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, p1}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->e(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private w0(Lcom/miui/permcenter/permissions/c;)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v2, v0, Lcom/miui/permcenter/permissions/c;->b:Ljava/util/List;

    iget-object v3, v0, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    invoke-direct {v10, v2, v3}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->o0(Ljava/util/List;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iput-object v0, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->g:Lcom/miui/permcenter/permissions/c;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    move v4, v12

    move v13, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->isShowInFirstPage()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v5}, Lcom/miui/permission/PermissionGroupInfo;->isShowInSecondPage()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v13, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {v11, v4}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f0e0453

    if-eqz v4, :cond_4

    new-instance v4, Lcom/miui/permcenter/widget/ContentPressPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/miui/permcenter/widget/ContentPressPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v6, 0x7f12147b

    invoke-virtual {v10, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/miui/permcenter/widget/ContentPressPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "miui.intent.action.PRIVACY_INPUT_MODE_ACTIVITY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.miui.securitycenter"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_4
    invoke-direct {v10, v2}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->p0(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/miui/permcenter/widget/ContentPressPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/miui/permcenter/widget/ContentPressPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-direct {v10, v14}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->q0(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/widget/ContentPressPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permission/PermissionGroupInfo;

    invoke-direct {v10, v4}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->r0(Lcom/miui/permission/PermissionGroupInfo;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_5
    iget-object v15, v0, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    new-instance v9, Lmiuix/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v9, v0, v2}, Lmiuix/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v9, v12}, Lmiuix/preference/PreferenceCategory;->f(Z)V

    invoke-virtual {v1, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/miui/permission/PermissionGroupInfo;

    new-instance v7, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->i(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->e(I)V

    invoke-virtual {v9, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {v8}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/miui/permcenter/l;->d(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->m0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->m:Landroidx/preference/Preference$d;

    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v7, v8}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->h(Lcom/miui/permission/PermissionGroupInfo;)V

    move v5, v12

    :goto_2
    invoke-virtual {v8}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-virtual {v8}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/miui/appmanager/AppManageUtils;->p0(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-direct {v10, v0}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-direct {v10, v0, v1, v2}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->u0(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->j:Z

    iget-object v6, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->l:Ljava/util/List;

    iget-object v0, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 p1, v8

    iget v8, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->d:I

    move-object/from16 v17, v9

    iget-object v9, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v19, v3

    move-object v3, v6

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-wide/from16 v5, v19

    move-object/from16 v19, v15

    move-object v15, v7

    move v7, v12

    move-object/from16 v12, p1

    move-object/from16 v21, v17

    invoke-direct/range {v0 .. v9}, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->t0(Landroid/content/Context;ZLjava/util/List;Landroid/content/pm/PackageInfo;JIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v18, 0x1

    move-object v8, v12

    move-object v7, v15

    move-object/from16 v15, v19

    move-object/from16 v9, v21

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v21, v9

    move-object/from16 v19, v15

    move-object v15, v7

    move v0, v12

    :goto_4
    invoke-virtual {v15, v0}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_9
    move-object/from16 v21, v9

    move v0, v12

    move-object/from16 v19, v15

    :goto_5
    move v12, v0

    move-object/from16 v15, v19

    move-object/from16 v9, v21

    goto/16 :goto_1

    :cond_a
    move-object/from16 v21, v9

    if-eqz v13, :cond_b

    new-instance v0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120b87

    invoke-virtual {v10, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->i(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->g(Ljava/lang/Boolean;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/permcenter/settings/OtherPermissionsActivity;

    invoke-direct {v1, v11, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "extra_pkgname"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v10, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->d:I

    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_b
    return-void

    :cond_c
    :goto_6
    invoke-virtual {v10, v11, v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->f0(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150056

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_pkgname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->d:I

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    const/16 v1, 0x10c0

    invoke-static {v0, v1, p1}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->n:Ljava/lang/String;

    const-string v1, "not found package"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Landroidx/lifecycle/u0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/miui/permcenter/permissions/a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/a;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->h:Lcom/miui/permcenter/permissions/a;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/a;->c()Landroidx/lifecycle/a0;

    move-result-object p1

    new-instance v0, Lcc/e;

    invoke-direct {v0, p0}, Lcc/e;-><init>(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->h:Lcom/miui/permcenter/permissions/a;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/a;->d()Lcom/miui/permcenter/permissions/e;

    move-result-object p1

    new-instance v0, Lcc/f;

    invoke-direct {v0, p0}, Lcc/f;-><init>(Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b0968

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->f:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->i:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2}, Lcom/miui/permission/RequiredPermissionsUtil;->isRequiredModifiableIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->j:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->d0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->k:Ljava/util/HashMap;

    iget-boolean p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->f:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->i:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2}, Lcom/miui/permission/RequiredPermissionsUtil;->retrieveRequiredPermissionsIncludeShared(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->l:Ljava/util/List;

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    const-string p2, "com.android.cts.permissionapp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/permcenter/compact/MIUIXCompact;->setTitle(Lmiuix/preference/PreferenceFragment;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->h:Lcom/miui/permcenter/permissions/a;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/NewPermissionsEditorFragment;->e:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method
