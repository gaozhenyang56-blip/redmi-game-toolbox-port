.class public final Llk/w2;
.super Ltj/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llk/w2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000 \u00082\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Llk/w2;",
        "Ltj/a;",
        "",
        "b",
        "Z",
        "dispatcherWasUnconfined",
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

.annotation build Lkotlin/PublishedApi;
.end annotation


# static fields
.field public static final c:Llk/w2$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llk/w2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/w2$a;-><init>(Lbk/g;)V

    sput-object v0, Llk/w2;->c:Llk/w2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Llk/w2;->c:Llk/w2$a;

    invoke-direct {p0, v0}, Ltj/a;-><init>(Ltj/g$c;)V

    return-void
.end method
