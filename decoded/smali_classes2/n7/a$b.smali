.class final Ln7/a$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a;->j(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.gamebooster.repository.GameBoxBarrageRepository"
    f = "GameBoxBarrageRepository.kt"
    i = {}
    l = {
        0x7f
    }
    m = "updateBarrageAppConfig-gIAlu-s"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Ln7/a;

.field c:I


# direct methods
.method constructor <init>(Ln7/a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/a;",
            "Ltj/d<",
            "-",
            "Ln7/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ln7/a$b;->b:Ln7/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Ltj/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Ln7/a$b;->a:Ljava/lang/Object;

    iget p1, p0, Ln7/a$b;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln7/a$b;->c:I

    iget-object p1, p0, Ln7/a$b;->b:Ln7/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ln7/a;->j(Ljava/util/List;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Loj/m;->a(Ljava/lang/Object;)Loj/m;

    move-result-object p1

    return-object p1
.end method
