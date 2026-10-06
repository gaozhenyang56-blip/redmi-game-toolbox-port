.class abstract Landroidx/core/text/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/text/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/text/j$c;


# direct methods
.method constructor <init>(Landroidx/core/text/j$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/text/j$d;->a:Landroidx/core/text/j$c;

    return-void
.end method

.method private b(Ljava/lang/CharSequence;II)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/text/j$d;->a:Landroidx/core/text/j$c;

    invoke-interface {v0, p1, p2, p3}, Landroidx/core/text/j$c;->a(Ljava/lang/CharSequence;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/core/text/j$d;->a()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return p2
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-object v0, p0, Landroidx/core/text/j$d;->a:Landroidx/core/text/j$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/text/j$d;->a()Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/text/j$d;->b(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
