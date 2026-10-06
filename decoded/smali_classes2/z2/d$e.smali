.class final Lz2/d$e;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/lang/Integer;",
        "Landroid/content/Context;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lz2/d;


# direct methods
.method constructor <init>(Lz2/d;)V
    .locals 0

    iput-object p1, p0, Lz2/d$e;->a:Lz2/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Context;)V
    .locals 2
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/d$e;->a:Lz2/d;

    invoke-virtual {v0, p1}, Lz2/d;->m(I)Lc3/b;

    move-result-object p1

    iget-object v0, p0, Lz2/d$e;->a:Lz2/d;

    invoke-virtual {p1}, Lc3/b;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, p2, p1, v1}, Lz2/d;->k(Lz2/d;Landroid/content/Context;Lc3/b;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lz2/d$e;->a(ILandroid/content/Context;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
