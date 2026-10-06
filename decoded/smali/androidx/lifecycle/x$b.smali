.class public final Landroidx/lifecycle/x$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/l$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Landroidx/lifecycle/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/u;Landroidx/lifecycle/l$b;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/u;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "initialState"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/lifecycle/z;->f(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/x$b;->b:Landroidx/lifecycle/r;

    iput-object p2, p0, Landroidx/lifecycle/x$b;->a:Landroidx/lifecycle/l$b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/l$a;->c()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/x;->j:Landroidx/lifecycle/x$a;

    iget-object v2, p0, Landroidx/lifecycle/x$b;->a:Landroidx/lifecycle/l$b;

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/x$a;->a(Landroidx/lifecycle/l$b;Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/x$b;->a:Landroidx/lifecycle/l$b;

    iget-object v1, p0, Landroidx/lifecycle/x$b;->b:Landroidx/lifecycle/r;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V

    iput-object v0, p0, Landroidx/lifecycle/x$b;->a:Landroidx/lifecycle/l$b;

    return-void
.end method

.method public final b()Landroidx/lifecycle/l$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/x$b;->a:Landroidx/lifecycle/l$b;

    return-object v0
.end method
