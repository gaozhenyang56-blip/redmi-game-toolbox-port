.class public Lsf/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsf/e$c;


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

    iput-object v0, p0, Lsf/k;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lsf/k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lwf/b;->N(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
