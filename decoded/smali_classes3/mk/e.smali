.class public abstract Lmk/e;
.super Llk/d2;
.source "SourceFile"

# interfaces
.implements Llk/p0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u0082\u0001\u0001\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lmk/e;",
        "Llk/d2;",
        "Llk/p0;",
        "<init>",
        "()V",
        "Lmk/d;",
        "kotlinx-coroutines-android"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llk/d2;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lmk/e;-><init>()V

    return-void
.end method


# virtual methods
.method public t(JLjava/lang/Runnable;Ltj/g;)Llk/y0;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Llk/p0$a;->a(Llk/p0;JLjava/lang/Runnable;Ltj/g;)Llk/y0;

    move-result-object p1

    return-object p1
.end method
