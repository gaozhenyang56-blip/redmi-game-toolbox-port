.class final La8/s0$g;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/s0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lkotlinx/coroutines/flow/r<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final a:La8/s0$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/s0$g;

    invoke-direct {v0}, La8/s0$g;-><init>()V

    sput-object v0, La8/s0$g;->a:La8/s0$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/r<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lnk/e;->b:Lnk/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/flow/y;->a(IILnk/e;)Lkotlinx/coroutines/flow/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La8/s0$g;->a()Lkotlinx/coroutines/flow/r;

    move-result-object v0

    return-object v0
.end method
