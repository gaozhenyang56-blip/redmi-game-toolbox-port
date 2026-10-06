.class Lcom/miui/securityscan/MainFragment$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h0"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$h0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$h0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/ScoreManager;->A()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v2, :cond_1

    sget-object v2, Lsf/i;->C:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v2, Lsf/i;->B:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->i()I

    move-result v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lef/x;->p(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lef/x;->j0(Landroid/content/Context;I)V

    :cond_2
    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    new-instance v2, Lcom/miui/securityscan/MainFragment$f0;

    invoke-direct {v2, v0}, Lcom/miui/securityscan/MainFragment$f0;-><init>(Lcom/miui/securityscan/MainFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
