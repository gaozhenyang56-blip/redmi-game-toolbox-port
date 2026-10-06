.class Lfe/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfe/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lfe/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfe/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfe/b$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lyd/c;Z)V
    .locals 0

    return-void
.end method

.method public c(Lyd/a;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lfe/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfe/b;->a(Lfe/b;)Lfe/b$a;

    move-result-object v0

    const/16 v1, 0x40b

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lw4/e;->b(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
