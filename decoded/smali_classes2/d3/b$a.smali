.class public final Ld3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Ld3/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/y0;)Ld3/b;
    .locals 2
    .param p1    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/u0;

    new-instance v1, Landroidx/lifecycle/u0$c;

    invoke-direct {v1}, Landroidx/lifecycle/u0$c;-><init>()V

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/u0$b;)V

    const-class p1, Ld3/b;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Ld3/b;

    return-object p1
.end method
