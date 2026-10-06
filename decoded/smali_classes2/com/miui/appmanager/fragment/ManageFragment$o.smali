.class Lcom/miui/appmanager/fragment/ManageFragment$o;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ManageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$o;->b:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$o;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/appmanager/fragment/ManageFragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$o;->b:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ManageFragment$o;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/miui/appmanager/fragment/ManageFragment;->G0(Lcom/miui/appmanager/fragment/ManageFragment;Landroid/content/Context;ILjava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ManageFragment;->B0(Lcom/miui/appmanager/fragment/ManageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/appmanager/fragment/ManageFragment;->F0(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ManageFragment;->B0(Lcom/miui/appmanager/fragment/ManageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/appmanager/fragment/ManageFragment;->E0(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ManageFragment;->B0(Lcom/miui/appmanager/fragment/ManageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/appmanager/fragment/ManageFragment;->C0(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/util/List;)V

    :cond_5
    :goto_0
    return-void
.end method
