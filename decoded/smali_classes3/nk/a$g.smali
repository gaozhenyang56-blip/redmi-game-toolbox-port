.class final Lnk/a$g;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnk/a;->b(Ltj/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    i = {}
    l = {
        0x279
    }
    m = "receiveCatching-JP2dKIU"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lnk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnk/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lnk/a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk/a<",
            "TE;>;",
            "Ltj/d<",
            "-",
            "Lnk/a$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnk/a$g;->b:Lnk/a;

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

    iput-object p1, p0, Lnk/a$g;->a:Ljava/lang/Object;

    iget p1, p0, Lnk/a$g;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lnk/a$g;->c:I

    iget-object p1, p0, Lnk/a$g;->b:Lnk/a;

    invoke-virtual {p1, p0}, Lnk/a;->b(Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lnk/j;->b(Ljava/lang/Object;)Lnk/j;

    move-result-object p1

    return-object p1
.end method
