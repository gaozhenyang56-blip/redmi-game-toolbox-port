.class public final Landroidx/window/layout/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/m$a;,
        Landroidx/window/layout/m$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 $2\u00020\u0001:\u0002\u000b\u000fB\u001f\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0013\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0013\u001a\u00020\u000e8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\u00148\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Landroidx/window/layout/m;",
        "Landroidx/window/layout/l;",
        "",
        "toString",
        "",
        "other",
        "",
        "equals",
        "",
        "hashCode",
        "Lc1/b;",
        "a",
        "Lc1/b;",
        "featureBounds",
        "Landroidx/window/layout/m$b;",
        "b",
        "Landroidx/window/layout/m$b;",
        "getType$window_release",
        "()Landroidx/window/layout/m$b;",
        "type",
        "Landroidx/window/layout/l$b;",
        "c",
        "Landroidx/window/layout/l$b;",
        "()Landroidx/window/layout/l$b;",
        "state",
        "Landroid/graphics/Rect;",
        "getBounds",
        "()Landroid/graphics/Rect;",
        "bounds",
        "()Z",
        "isSeparating",
        "Landroidx/window/layout/l$a;",
        "()Landroidx/window/layout/l$a;",
        "orientation",
        "<init>",
        "(Lc1/b;Landroidx/window/layout/m$b;Landroidx/window/layout/l$b;)V",
        "d",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final d:Landroidx/window/layout/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lc1/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroidx/window/layout/m$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroidx/window/layout/l$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/m$a;-><init>(Lbk/g;)V

    sput-object v0, Landroidx/window/layout/m;->d:Landroidx/window/layout/m$a;

    return-void
.end method

.method public constructor <init>(Lc1/b;Landroidx/window/layout/m$b;Landroidx/window/layout/l$b;)V
    .locals 1
    .param p1    # Lc1/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/layout/m$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/window/layout/l$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "featureBounds"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/m;->a:Lc1/b;

    iput-object p2, p0, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    iput-object p3, p0, Landroidx/window/layout/m;->c:Landroidx/window/layout/l$b;

    sget-object p2, Landroidx/window/layout/m;->d:Landroidx/window/layout/m$a;

    invoke-virtual {p2, p1}, Landroidx/window/layout/m$a;->a(Lc1/b;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    sget-object v1, Landroidx/window/layout/m$b;->b:Landroidx/window/layout/m$b$a;

    invoke-virtual {v1}, Landroidx/window/layout/m$b$a;->b()Landroidx/window/layout/m$b;

    move-result-object v2

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    invoke-virtual {v1}, Landroidx/window/layout/m$b$a;->a()Landroidx/window/layout/m$b;

    move-result-object v1

    invoke-static {v0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/window/layout/m;->c()Landroidx/window/layout/l$b;

    move-result-object v0

    sget-object v1, Landroidx/window/layout/l$b;->d:Landroidx/window/layout/l$b;

    invoke-static {v0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public b()Landroidx/window/layout/l$a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/m;->a:Lc1/b;

    invoke-virtual {v0}, Lc1/b;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/window/layout/m;->a:Lc1/b;

    invoke-virtual {v1}, Lc1/b;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Landroidx/window/layout/l$a;->d:Landroidx/window/layout/l$a;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/window/layout/l$a;->c:Landroidx/window/layout/l$a;

    :goto_0
    return-object v0
.end method

.method public c()Landroidx/window/layout/l$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/m;->c:Landroidx/window/layout/l$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Landroidx/window/layout/m;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_6

    check-cast p1, Landroidx/window/layout/m;

    iget-object v1, p0, Landroidx/window/layout/m;->a:Lc1/b;

    iget-object v3, p1, Landroidx/window/layout/m;->a:Lc1/b;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    iget-object v3, p1, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Landroidx/window/layout/m;->c()Landroidx/window/layout/l$b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/window/layout/m;->c()Landroidx/window/layout/l$b;

    move-result-object p1

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/m;->a:Lc1/b;

    invoke-virtual {v0}, Lc1/b;->f()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/m;->a:Lc1/b;

    invoke-virtual {v0}, Lc1/b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/window/layout/m;->c()Landroidx/window/layout/l$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/layout/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/m;->a:Lc1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/m;->b:Landroidx/window/layout/m$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/window/layout/m;->c()Landroidx/window/layout/l$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
