.class Lx5/p$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/p;->Z0()V
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
.field final synthetic a:Lx5/p;


# direct methods
.method constructor <init>(Lx5/p;)V
    .locals 0

    iput-object p1, p0, Lx5/p$e;->a:Lx5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loj/t;
    .locals 2

    iget-object v0, p0, Lx5/p$e;->a:Lx5/p;

    sget-object v1, Lg8/a;->A:Lg8/a;

    invoke-static {v0, v1}, Lx5/p;->m(Lx5/p;Lg8/a;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx5/p$e;->a()Loj/t;

    move-result-object v0

    return-object v0
.end method
