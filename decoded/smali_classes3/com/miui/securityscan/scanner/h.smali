.class public Lcom/miui/securityscan/scanner/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/securityscan/scanner/k$l;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lwf/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lzf/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/securityscan/scanner/a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzf/d;

    invoke-interface {v0, p1, v1}, Lwf/b;->l(Lcom/miui/securityscan/scanner/a;Lzf/d;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lzf/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/securityscan/scanner/h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzf/d;

    invoke-interface {v0, v1}, Lwf/b;->W(Lzf/d;)V

    :cond_0
    return-void
.end method
