.class public Lcom/miui/securityscan/scanner/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/securityscan/scanner/k$i;


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


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public c(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lwf/b;->c(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->ignore()V

    :cond_0
    return-void
.end method

.method public e(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-nez p2, :cond_0

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcg/a;->a(I)V

    :cond_0
    return-void
.end method
