.class Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/miui/permcenter/autostart/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic J(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->N(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->M(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private L(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lnb/c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-instance v2, Lnb/c;

    invoke-direct {v2}, Lnb/c;-><init>()V

    sget-object v5, Lnb/d;->a:Lnb/d;

    invoke-virtual {v2, v5}, Lnb/c;->d(Lnb/d;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100053

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnb/c;->c(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lnb/c;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lnb/c;

    invoke-direct {p1}, Lnb/c;-><init>()V

    sget-object v2, Lnb/d;->b:Lnb/d;

    invoke-virtual {p1, v2}, Lnb/c;->d(Lnb/d;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100051

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v0, v2, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnb/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnb/c;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method private static synthetic M(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/permcenter/l;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic N(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/permcenter/l;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->O()Lcom/miui/permcenter/autostart/b;

    move-result-object v0

    return-object v0
.end method

.method public O()Lcom/miui/permcenter/autostart/b;
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lq0/a;->F()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/miui/permcenter/autostart/b;

    invoke-direct {v10}, Lcom/miui/permcenter/autostart/b;-><init>()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const-string v0, "close_autostart_waring"

    invoke-static {v9, v0}, Lcom/miui/appmanager/AppManageUtils;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/miui/permcenter/autostart/b;->c:Ljava/util/List;

    :cond_1
    new-instance v11, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$c;

    invoke-direct {v11}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$c;-><init>()V

    invoke-static {v9}, Lcom/miui/appmanager/AppManageUtils;->S(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v12, 0x3

    const-wide/16 v13, 0x4000

    const/4 v15, 0x1

    if-nez v0, :cond_6

    iput-boolean v15, v10, Lcom/miui/permcenter/autostart/b;->d:Z

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v8

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/permcenter/autostart/c;

    invoke-direct {v7, v9}, Lcom/miui/permcenter/autostart/c;-><init>(Landroid/content/Context;)V

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lcom/miui/permcenter/n;->C(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lxc/c;Lak/l;I)Ljava/util/ArrayList;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, ""

    const-string v4, "loadWorkProfileAllAppAndPermissions error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v7}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lxc/n;->a(Ljava/lang/String;)Le3/g;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/permcenter/AppPermissionInfo;->setPyInfo(Le3/g;)V

    invoke-virtual {v7}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_3

    invoke-virtual {v7, v15}, Lcom/miui/permcenter/AppPermissionInfo;->setIsAllowStartByWakePath(Z)V

    invoke-virtual {v7}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v4, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v1, v0, v4}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v3, v5}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lcom/miui/permcenter/autostart/h;

    invoke-direct {v7}, Lcom/miui/permcenter/autostart/h;-><init>()V

    iput-object v2, v7, Lcom/miui/permcenter/autostart/h;->a:Ljava/util/ArrayList;

    iput-object v6, v7, Lcom/miui/permcenter/autostart/h;->b:Ljava/util/ArrayList;

    iput-object v0, v7, Lcom/miui/permcenter/autostart/h;->c:Ljava/util/ArrayList;

    iput-object v4, v7, Lcom/miui/permcenter/autostart/h;->e:Ljava/util/ArrayList;

    iput-object v3, v7, Lcom/miui/permcenter/autostart/h;->d:Ljava/util/ArrayList;

    iput-object v5, v7, Lcom/miui/permcenter/autostart/h;->f:Ljava/util/ArrayList;

    iput-object v7, v10, Lcom/miui/permcenter/autostart/b;->b:Lcom/miui/permcenter/autostart/h;

    :cond_6
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/miui/permcenter/autostart/d;

    invoke-direct {v2, v9}, Lcom/miui/permcenter/autostart/d;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {v9, v15, v0, v3, v2}, Lcom/miui/permcenter/n;->z(Landroid/content/Context;ZLjava/util/List;Lxc/c;Lak/l;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lxc/n;->a(Ljava/lang/String;)Le3/g;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/permcenter/AppPermissionInfo;->setPyInfo(Le3/g;)V

    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v12, :cond_8

    invoke-virtual {v6, v15}, Lcom/miui/permcenter/AppPermissionInfo;->setIsAllowStartByWakePath(Z)V

    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-static {v2, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v4, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v1, v2, v4}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v3, v5}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lcom/miui/permcenter/autostart/h;

    invoke-direct {v7}, Lcom/miui/permcenter/autostart/h;-><init>()V

    iput-object v0, v7, Lcom/miui/permcenter/autostart/h;->a:Ljava/util/ArrayList;

    iput-object v6, v7, Lcom/miui/permcenter/autostart/h;->b:Ljava/util/ArrayList;

    iput-object v2, v7, Lcom/miui/permcenter/autostart/h;->c:Ljava/util/ArrayList;

    iput-object v4, v7, Lcom/miui/permcenter/autostart/h;->e:Ljava/util/ArrayList;

    iput-object v3, v7, Lcom/miui/permcenter/autostart/h;->d:Ljava/util/ArrayList;

    iput-object v5, v7, Lcom/miui/permcenter/autostart/h;->f:Ljava/util/ArrayList;

    iput-object v7, v10, Lcom/miui/permcenter/autostart/b;->a:Lcom/miui/permcenter/autostart/h;

    return-object v10
.end method
