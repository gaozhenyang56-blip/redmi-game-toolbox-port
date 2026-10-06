.class Lcom/miui/optimizemanage/CleanFragment$n;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/CleanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Ljb/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/CleanFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$n;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/CleanFragment$n;->J()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljb/e;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/optimizemanage/CleanFragment$n;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizemanage/CleanFragment;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-static {v3, v0, v1}, Lcom/miui/optimizemanage/CleanFragment;->c0(Lcom/miui/optimizemanage/CleanFragment;J)J

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lcom/miui/optimizemanage/CleanFragment;->d0(Lcom/miui/optimizemanage/CleanFragment;)Ljb/h;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljb/h;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-direct {v1, v4}, Ljb/h;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v1}, Lcom/miui/optimizemanage/CleanFragment;->f0(Lcom/miui/optimizemanage/CleanFragment;Ljb/h;)Ljb/h;

    :cond_1
    invoke-static {v3}, Lcom/miui/optimizemanage/CleanFragment;->d0(Lcom/miui/optimizemanage/CleanFragment;)Ljb/h;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljb/h;->c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Lcom/miui/optimizemanage/CleanFragment;->o0(Lcom/miui/optimizemanage/CleanFragment;)Ljb/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljb/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v4
.end method
