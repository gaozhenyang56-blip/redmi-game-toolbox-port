.class Lcom/miui/securityscan/MainFragment$f0;
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
    name = "f0"
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

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$f0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$f0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->m1(Lcom/miui/securityscan/MainFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Lwf/a;->s(I)I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Leg/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lwf/a;->setStatusTopText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
