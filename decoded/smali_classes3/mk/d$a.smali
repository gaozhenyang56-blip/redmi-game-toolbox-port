.class public final Lmk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmk/d;->p(JLlk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Loj/t;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Llk/l;

.field final synthetic b:Lmk/d;


# direct methods
.method public constructor <init>(Llk/l;Lmk/d;)V
    .locals 0

    iput-object p1, p0, Lmk/d$a;->a:Llk/l;

    iput-object p2, p0, Lmk/d$a;->b:Lmk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmk/d$a;->a:Llk/l;

    iget-object v1, p0, Lmk/d$a;->b:Lmk/d;

    sget-object v2, Loj/t;->a:Loj/t;

    invoke-interface {v0, v1, v2}, Llk/l;->r(Llk/d0;Ljava/lang/Object;)V

    return-void
.end method
