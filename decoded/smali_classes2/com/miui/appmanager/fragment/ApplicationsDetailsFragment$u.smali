.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 p1, 0x5

    if-eq v2, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2
    invoke-static {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "ApplicationsDetailsActivity"

    const-string v5, "handle message get application info error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz p1, :cond_4

    invoke-static {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->T0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    :cond_4
    if-eqz p1, :cond_5

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_5

    move v3, v1

    :cond_5
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v3, :cond_6

    const v0, 0x7f1201bc

    goto :goto_1

    :cond_6
    const v0, 0x7f1201c2

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    if-eqz v3, :cond_7

    const p1, 0x7f1201c3

    goto :goto_2

    :cond_7
    const p1, 0x7f1201bd

    :goto_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Leg/c;->n(Landroid/content/Context;I)V

    goto :goto_3

    :cond_8
    iget-wide v4, v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    invoke-static {v1, v4, v5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->X2(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object v4

    iget-wide v5, v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z0:J

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)J

    move-result-wide v9

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v11

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v12, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-static/range {v4 .. v12}, Lcom/miui/appmanager/AppManageUtils;->H0(Landroid/view/MenuItem;JJJZLjava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->f(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    :goto_3
    return-void
.end method
