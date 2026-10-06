.class public abstract Llk/i1;
.super Llk/d0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llk/i1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 \t2\u00020\u00012\u00020\u0002:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0006\u001a\u00020\u00038&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Llk/i1;",
        "Llk/d0;",
        "Ljava/io/Closeable;",
        "Ljava/util/concurrent/Executor;",
        "Y",
        "()Ljava/util/concurrent/Executor;",
        "executor",
        "<init>",
        "()V",
        "c",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final c:Llk/i1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llk/i1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/i1$a;-><init>(Lbk/g;)V

    sput-object v0, Llk/i1;->c:Llk/i1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llk/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Y()Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
