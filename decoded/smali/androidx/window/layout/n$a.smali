.class final Landroidx/window/layout/n$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/n;->n(Ljava/lang/ClassLoader;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/n$a;->a:Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Landroidx/window/layout/n;->a:Landroidx/window/layout/n;

    iget-object v1, p0, Landroidx/window/layout/n$a;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroidx/window/layout/n;->d(Landroidx/window/layout/n;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getBounds"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const-string v5, "getType"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    const-string v6, "getState"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v5, "getBoundsMethod"

    invoke-static {v3, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroid/graphics/Rect;

    invoke-static {v5}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v5

    invoke-static {v0, v3, v5}, Landroidx/window/layout/n;->b(Landroidx/window/layout/n;Ljava/lang/reflect/Method;Lhk/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0, v3}, Landroidx/window/layout/n;->e(Landroidx/window/layout/n;Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getTypeMethod"

    invoke-static {v4, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroidx/window/layout/n;->b(Landroidx/window/layout/n;Ljava/lang/reflect/Method;Lhk/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0, v4}, Landroidx/window/layout/n;->e(Landroidx/window/layout/n;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "getStateMethod"

    invoke-static {v1, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroidx/window/layout/n;->b(Landroidx/window/layout/n;Ljava/lang/reflect/Method;Lhk/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Landroidx/window/layout/n;->e(Landroidx/window/layout/n;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/window/layout/n$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
