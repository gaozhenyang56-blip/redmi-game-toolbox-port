.class public final Lc1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lc1/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB)\u0008\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\t\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0016R\u0017\u0010\u000f\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0011\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u000eR\u0017\u0010\u0014\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000eR\u0017\u0010\u0018\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001c\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u001a\u001a\u0004\u0008\u0012\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lc1/h;",
        "",
        "",
        "toString",
        "other",
        "",
        "b",
        "",
        "",
        "equals",
        "hashCode",
        "a",
        "I",
        "d",
        "()I",
        "major",
        "e",
        "minor",
        "c",
        "f",
        "patch",
        "Ljava/lang/String;",
        "getDescription",
        "()Ljava/lang/String;",
        "description",
        "Ljava/math/BigInteger;",
        "Loj/f;",
        "()Ljava/math/BigInteger;",
        "bigInteger",
        "<init>",
        "(IIILjava/lang/String;)V",
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
.field public static final f:Lc1/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lc1/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lc1/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lc1/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Lc1/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc1/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc1/h$a;-><init>(Lbk/g;)V

    sput-object v0, Lc1/h;->f:Lc1/h$a;

    new-instance v0, Lc1/h;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v1, v2}, Lc1/h;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lc1/h;->g:Lc1/h;

    new-instance v0, Lc1/h;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, Lc1/h;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lc1/h;->h:Lc1/h;

    new-instance v0, Lc1/h;

    invoke-direct {v0, v3, v1, v1, v2}, Lc1/h;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lc1/h;->i:Lc1/h;

    sput-object v0, Lc1/h;->j:Lc1/h;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc1/h;->a:I

    iput p2, p0, Lc1/h;->b:I

    iput p3, p0, Lc1/h;->c:I

    iput-object p4, p0, Lc1/h;->d:Ljava/lang/String;

    new-instance p1, Lc1/h$b;

    invoke-direct {p1, p0}, Lc1/h$b;-><init>(Lc1/h;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lc1/h;->e:Loj/f;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Lbk/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lc1/h;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a()Lc1/h;
    .locals 1

    sget-object v0, Lc1/h;->h:Lc1/h;

    return-object v0
.end method

.method private final c()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lc1/h;->e:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-bigInteger>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public b(Lc1/h;)I
    .locals 1
    .param p1    # Lc1/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc1/h;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1}, Lc1/h;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc1/h;

    invoke-virtual {p0, p1}, Lc1/h;->b(Lc1/h;)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lc1/h;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lc1/h;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lc1/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lc1/h;->a:I

    check-cast p1, Lc1/h;

    iget v2, p1, Lc1/h;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lc1/h;->b:I

    iget v2, p1, Lc1/h;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lc1/h;->c:I

    iget p1, p1, Lc1/h;->c:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lc1/h;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lc1/h;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lc1/h;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lc1/h;->c:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lc1/h;->d:Ljava/lang/String;

    invoke-static {v0}, Ljk/f;->n(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc1/h;->d:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {v1, v0}, Lbk/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lc1/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lc1/h;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lc1/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
