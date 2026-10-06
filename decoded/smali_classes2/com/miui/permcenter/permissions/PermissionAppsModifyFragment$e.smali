.class public final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->I0()I

    move-result p1

    :goto_0
    move v10, p1

    goto :goto_1

    :sswitch_0
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_1
    move v10, v0

    goto :goto_1

    :sswitch_2
    move v10, v2

    goto :goto_1

    :sswitch_3
    move v10, v1

    :goto_1
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->I0()I

    move-result p1

    if-ne v10, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1, v10}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->w0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1, v10}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->B0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->u0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v9, 0x0

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v9

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->t0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v9

    :goto_3
    if-eqz p1, :cond_5

    if-eq v10, v1, :cond_4

    if-ne v10, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1, v10}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->y0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    goto/16 :goto_8

    :cond_5
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->J0()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string v1, "permissionId"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lxc/m;->d(J)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "appPermissionInfo"

    const-string v5, "requireContext()"

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lxc/m;->e(J)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v5}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->m0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v3, v5

    :goto_5
    invoke-virtual {v3}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v3, "appPermissionInfo.packageName"

    invoke-static {v4, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v3}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->v0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v3, v1

    move v8, v10

    invoke-static/range {v3 .. v8}, Lxc/u;->B(Landroid/content/Context;Ljava/lang/String;IJI)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v3, v4, v10, v9}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->D0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;JIZ)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->J0()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v3}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->J0()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v0, v10}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->x0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    goto/16 :goto_4

    :cond_9
    :goto_6
    sget-object p1, Lxc/u;->a:Lxc/u;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->m0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_7

    :cond_a
    move-object v5, v2

    :goto_7
    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->v0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v11, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e;->a:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-direct {v11, v0, v10}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$e$a;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;I)V

    move-object v3, p1

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Lxc/u;->u(Landroid/content/Context;Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/pm/PackageInfo;IJILxc/b;)V

    :cond_b
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b08a8 -> :sswitch_3
        0x7f0b08aa -> :sswitch_2
        0x7f0b08ac -> :sswitch_1
        0x7f0b08af -> :sswitch_0
    .end sparse-switch
.end method
