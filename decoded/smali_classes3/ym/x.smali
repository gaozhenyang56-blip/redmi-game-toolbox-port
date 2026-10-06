.class public final Lym/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym/x$a;
    }
.end annotation


# instance fields
.field final a:Lym/r;

.field final b:Ljava/lang/String;

.field final c:Lym/q;

.field final d:Lym/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lym/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lym/x$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lym/x$a;->a:Lym/r;

    iput-object v0, p0, Lym/x;->a:Lym/r;

    iget-object v0, p1, Lym/x$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lym/x;->b:Ljava/lang/String;

    iget-object v0, p1, Lym/x$a;->c:Lym/q$a;

    invoke-virtual {v0}, Lym/q$a;->d()Lym/q;

    move-result-object v0

    iput-object v0, p0, Lym/x;->c:Lym/q;

    iget-object v0, p1, Lym/x$a;->d:Lym/y;

    iput-object v0, p0, Lym/x;->d:Lym/y;

    iget-object p1, p1, Lym/x$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lzm/c;->u(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lym/x;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lym/y;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/x;->d:Lym/y;

    return-object v0
.end method

.method public b()Lym/c;
    .locals 1

    iget-object v0, p0, Lym/x;->f:Lym/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lym/x;->c:Lym/q;

    invoke-static {v0}, Lym/c;->k(Lym/q;)Lym/c;

    move-result-object v0

    iput-object v0, p0, Lym/x;->f:Lym/c;

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/x;->c:Lym/q;

    invoke-virtual {v0, p1}, Lym/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lym/q;
    .locals 1

    iget-object v0, p0, Lym/x;->c:Lym/q;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lym/x;->a:Lym/r;

    invoke-virtual {v0}, Lym/r;->m()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lym/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lym/x$a;
    .locals 1

    new-instance v0, Lym/x$a;

    invoke-direct {v0, p0}, Lym/x$a;-><init>(Lym/x;)V

    return-object v0
.end method

.method public h()Lym/r;
    .locals 1

    iget-object v0, p0, Lym/x;->a:Lym/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/x;->a:Lym/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/x;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
