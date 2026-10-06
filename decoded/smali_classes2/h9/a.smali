.class public abstract Lh9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lh9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh9/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    iget-object v0, p0, Lh9/a;->b:Lh9/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lh9/a;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lh9/a;->b:Lh9/a;

    invoke-virtual {v0}, Lh9/a;->b()Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public c(Lh9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh9/a<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lh9/a;->b:Lh9/a;

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lh9/a;->a:Ljava/lang/Object;

    return-void
.end method
