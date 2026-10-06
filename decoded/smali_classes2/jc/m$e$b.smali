.class final Ljc/m$e$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljc/m$e;-><init>(Ljc/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/util/List<",
        "+",
        "Ljc/g;",
        ">;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljc/m$e;


# direct methods
.method constructor <init>(Ljc/m$e;)V
    .locals 0

    iput-object p1, p0, Ljc/m$e$b;->a:Ljc/m$e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Ljc/m$e$b;->a:Ljc/m$e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljc/m$e;->q(Ljc/m$e;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ljc/m$e$b;->a(Ljava/util/List;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
