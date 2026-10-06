.class final Landroidx/lifecycle/m0$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/m0;->d(Landroidx/lifecycle/y0;)Landroidx/lifecycle/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lp0/a;",
        "Landroidx/lifecycle/o0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/m0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/m0$d;

    invoke-direct {v0}, Landroidx/lifecycle/m0$d;-><init>()V

    sput-object v0, Landroidx/lifecycle/m0$d;->a:Landroidx/lifecycle/m0$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lp0/a;)Landroidx/lifecycle/o0;
    .locals 1
    .param p1    # Lp0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$initializer"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/lifecycle/o0;

    invoke-direct {p1}, Landroidx/lifecycle/o0;-><init>()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp0/a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0$d;->a(Lp0/a;)Landroidx/lifecycle/o0;

    move-result-object p1

    return-object p1
.end method
