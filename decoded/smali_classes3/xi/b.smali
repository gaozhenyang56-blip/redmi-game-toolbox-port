.class public abstract Lxi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lxi/c;


# direct methods
.method protected constructor <init>(Lxi/c;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    iput p2, p0, Lxi/b;->a:I

    iput-object p1, p0, Lxi/b;->b:Lxi/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "percent can be [0,100]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a()Lxi/c;
    .locals 1

    iget-object v0, p0, Lxi/b;->b:Lxi/c;

    return-object v0
.end method

.method protected b()Z
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lxi/b;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract c(D)D
.end method
