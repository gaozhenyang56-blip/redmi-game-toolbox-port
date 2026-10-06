.class Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->e(Landroidx/lifecycle/v;Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;

    invoke-static {p1}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->a(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->b(Z)Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_1

    invoke-static {}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver;->c()V

    :cond_1
    :goto_0
    return-void
.end method
