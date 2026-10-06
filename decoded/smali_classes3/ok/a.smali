.class public abstract Lok/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lok/c<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008 \u0018\u0000*\u000c\u0008\u0000\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u00012\u00060\u0003j\u0002`\u0004B\u0007\u00a2\u0006\u0004\u0008 \u0010\u0017J\u000f\u0010\u0005\u001a\u00028\u0000H$\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\t2\u0006\u0010\u0008\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R>\u0010\u0018\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\t2\u0010\u0010\u0011\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\t8\u0004@BX\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R$\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00078\u0004@BX\u0084\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lok/a;",
        "Lok/c;",
        "S",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "f",
        "()Lok/c;",
        "",
        "size",
        "",
        "g",
        "(I)[Lok/c;",
        "e",
        "slot",
        "Loj/t;",
        "h",
        "(Lok/c;)V",
        "<set-?>",
        "a",
        "[Lok/c;",
        "j",
        "()[Lok/c;",
        "getSlots$annotations",
        "()V",
        "slots",
        "b",
        "I",
        "i",
        "()I",
        "nCollectors",
        "c",
        "nextIndex",
        "<init>",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private a:[Lok/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lok/a;)I
    .locals 0

    iget p0, p0, Lok/a;->b:I

    return p0
.end method

.method public static final synthetic d(Lok/a;)[Lok/c;
    .locals 0

    iget-object p0, p0, Lok/a;->a:[Lok/c;

    return-object p0
.end method


# virtual methods
.method protected final e()Lok/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lok/a;->a:[Lok/c;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lok/a;->g(I)[Lok/c;

    move-result-object v0

    iput-object v0, p0, Lok/a;->a:[Lok/c;

    goto :goto_0

    :cond_0
    iget v2, p0, Lok/a;->b:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lok/c;

    iput-object v1, p0, Lok/a;->a:[Lok/c;

    check-cast v0, [Lok/c;

    :cond_1
    :goto_0
    iget v1, p0, Lok/a;->c:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lok/a;->f()Lok/c;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, Lok/c;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lok/a;->c:I

    iget v0, p0, Lok/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lok/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract f()Lok/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected abstract g(I)[Lok/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final h(Lok/c;)V
    .locals 4
    .param p1    # Lok/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lok/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lok/a;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lok/a;->c:I

    :cond_0
    invoke-virtual {p1, p0}, Lok/c;->b(Ljava/lang/Object;)[Ltj/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    sget-object v3, Loj/m;->b:Loj/m$a;

    sget-object v3, Loj/t;->a:Loj/t;

    invoke-static {v3}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final i()I
    .locals 1

    iget v0, p0, Lok/a;->b:I

    return v0
.end method

.method protected final j()[Lok/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lok/a;->a:[Lok/c;

    return-object v0
.end method
