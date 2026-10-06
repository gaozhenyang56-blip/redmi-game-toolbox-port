.class public final Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/e;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mAdapter"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljc/e;->m(I)Ljc/f;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Ljc/g;

    if-eqz v0, :cond_f

    check-cast p1, Ljc/g;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljc/g;->d(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljc/g;->i()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v5}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v4

    sget-object v5, Lxc/m$a;->a:Lxc/m$a;

    if-ne v4, v5, :cond_3

    const-wide/16 v4, -0x3

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    :cond_2
    const-wide v2, 0x200000000000L

    :cond_3
    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-virtual {p1}, Ljc/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lxc/u;->f(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljc/g;->h()Ljava/lang/String;

    move-result-object v2

    move v4, v1

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v4, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v4, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v5}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v2, Lcom/miui/permission/PermissionGroupInfo;

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{\n                      \u2026                        }"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljc/g;->i()J

    move-result-wide v5

    const-wide/16 v7, 0x4000

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.OP_AUTO_START"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {p1}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "package_name"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/miui/permcenter/l;->b(Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v5

    const-string v6, "permission_action"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq v4, v1, :cond_9

    const-string v1, "group_id"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    const-string v1, "permission_name"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permission_id"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "extra_permission_info"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object p1, v3

    :goto_2
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljc/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->f0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_3
    if-nez v1, :cond_f

    invoke-virtual {p1}, Ljc/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljc/g;->g()I

    move-result p1

    invoke-static {p1}, Ldc/d;->c(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->f0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/a;

    if-eqz p1, :cond_f

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    const-class v3, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "device_permission_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "device_permission"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    const/16 v0, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    nop

    :cond_f
    :goto_4
    return-void
.end method
