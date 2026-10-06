.class public final Lc1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ=\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0001*\u00028\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lc1/f$a;",
        "",
        "T",
        "",
        "tag",
        "Lc1/f$b;",
        "verificationMode",
        "Lc1/e;",
        "logger",
        "Lc1/f;",
        "a",
        "(Ljava/lang/Object;Ljava/lang/String;Lc1/f$b;Lc1/e;)Lc1/f;",
        "<init>",
        "()V",
        "window_release"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lc1/f$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lc1/f$a;Ljava/lang/Object;Ljava/lang/String;Lc1/f$b;Lc1/e;ILjava/lang/Object;)Lc1/f;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p3, Lc1/c;->a:Lc1/c;

    invoke-virtual {p3}, Lc1/c;->a()Lc1/f$b;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p4, Lc1/a;->a:Lc1/a;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lc1/f$a;->a(Ljava/lang/Object;Ljava/lang/String;Lc1/f$b;Lc1/e;)Lc1/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Lc1/f$b;Lc1/e;)Lc1/f;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lc1/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lc1/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lc1/f$b;",
            "Lc1/e;",
            ")",
            "Lc1/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc1/g;

    invoke-direct {v0, p1, p2, p3, p4}, Lc1/g;-><init>(Ljava/lang/Object;Ljava/lang/String;Lc1/f$b;Lc1/e;)V

    return-object v0
.end method
