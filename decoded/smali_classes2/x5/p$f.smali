.class Lx5/p$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/p;->e1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ld6/d;

.field final synthetic b:Lx5/p;


# direct methods
.method constructor <init>(Lx5/p;Ld6/d;)V
    .locals 0

    iput-object p1, p0, Lx5/p$f;->b:Lx5/p;

    iput-object p2, p0, Lx5/p$f;->a:Ld6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loj/t;
    .locals 2

    iget-object v0, p0, Lx5/p$f;->b:Lx5/p;

    invoke-static {v0}, Lx5/p;->n(Lx5/p;)V

    iget-object v0, p0, Lx5/p$f;->b:Lx5/p;

    sget-object v1, Lg8/a;->z:Lg8/a;

    invoke-static {v0, v1}, Lx5/p;->m(Lx5/p;Lg8/a;)V

    iget-object v0, p0, Lx5/p$f;->a:Ld6/d;

    invoke-virtual {v0}, Ld6/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx5/p$f;->b:Lx5/p;

    invoke-static {v0}, Lx5/p;->o(Lx5/p;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx5/p$f;->a()Loj/t;

    move-result-object v0

    return-object v0
.end method
