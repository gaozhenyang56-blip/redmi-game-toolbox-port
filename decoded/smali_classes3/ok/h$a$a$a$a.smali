.class final Lok/h$a$a$a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lok/h$a$a$a;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1"
    f = "Combine.kt"
    i = {}
    l = {
        0x23,
        0x24
    }
    m = "emit"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lok/h$a$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lok/h$a$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lok/h$a$a$a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lok/h$a$a$a<",
            "-TT;>;",
            "Ltj/d<",
            "-",
            "Lok/h$a$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lok/h$a$a$a$a;->b:Lok/h$a$a$a;

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

    iput-object p1, p0, Lok/h$a$a$a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lok/h$a$a$a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lok/h$a$a$a$a;->c:I

    iget-object p1, p0, Lok/h$a$a$a$a;->b:Lok/h$a$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lok/h$a$a$a;->emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
