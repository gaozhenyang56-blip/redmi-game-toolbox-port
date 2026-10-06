.class final Lyc/s$g$a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyc/s$g$a;->a(Lyc/r;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.wakepath.WakePathViewModel$loadData$4$1"
    f = "WakePathViewModel.kt"
    i = {}
    l = {
        0x9b
    }
    m = "emit"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lyc/s$g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyc/s$g$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lyc/s$g$a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc/s$g$a<",
            "-TT;>;",
            "Ltj/d<",
            "-",
            "Lyc/s$g$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyc/s$g$a$a;->b:Lyc/s$g$a;

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

    iput-object p1, p0, Lyc/s$g$a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lyc/s$g$a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyc/s$g$a$a;->c:I

    iget-object p1, p0, Lyc/s$g$a$a;->b:Lyc/s$g$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lyc/s$g$a;->a(Lyc/r;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
