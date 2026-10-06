.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b0"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->b:Landroid/content/Context;

    :cond_0
    iput p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->c:I

    iput-boolean p3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->d:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "com.miui.guardprovider"

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->b:Landroid/content/Context;

    invoke-static {v0}, Lw2/t;->K(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v2

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/appmanager/AppManageUtils;->e0(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    :cond_3
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    move-result-object v1

    new-instance v2, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$e;

    invoke-direct {v2, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$e;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationsDetailsActivity"

    const-string v2, "update autostart error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
