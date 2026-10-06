.class public Lfe/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/k$a;
    }
.end annotation


# direct methods
.method public static a()Lfe/k$a;
    .locals 2

    new-instance v0, Lfe/k$a;

    invoke-direct {v0}, Lfe/k$a;-><init>()V

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->z()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lfe/k$a;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->o()I

    move-result v1

    iput v1, v0, Lfe/k$a;->b:I

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->w()I

    move-result v1

    iput v1, v0, Lfe/k$a;->c:I

    :cond_0
    return-object v0
.end method
