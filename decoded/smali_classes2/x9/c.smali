.class public final Lx9/c;
.super Lx9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lcom/miui/international/bean/OptimizeGlobalAdBean;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx9/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "1.306.1.7"

    const-string v1, "1.306.1.8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Lx9/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9/c;->d:Z

    invoke-virtual {p0}, Lx9/c;->b()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lx9/b;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
