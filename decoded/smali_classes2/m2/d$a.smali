.class Lm2/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm2/d;


# direct methods
.method constructor <init>(Lm2/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lm2/d$a;->a:Lm2/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lm2/d$a;->a:Lm2/d;

    invoke-virtual {p1}, Lm2/d;->j()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lm2/d$a;->a:Lm2/d;

    invoke-static {v0}, Lm2/d;->b(Lm2/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lm2/d$a;->a:Lm2/d;

    invoke-static {v0}, Lm2/d;->b(Lm2/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/d$b;

    invoke-interface {v0}, Lm2/d$b;->p()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lm2/d$g;

    iget-object v0, p1, Lm2/d$g;->c:Lm2/d$e;

    iget-object v1, p1, Lm2/d$g;->a:Ljava/lang/String;

    iget-object v2, p1, Lm2/d$g;->b:Landroid/util/Pair;

    invoke-interface {v0, v1, v2}, Lm2/d$e;->a(Ljava/lang/String;Landroid/util/Pair;)V

    iget-object v0, p0, Lm2/d$a;->a:Lm2/d;

    invoke-static {v0}, Lm2/d;->a(Lm2/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lm2/d$g;->a:Ljava/lang/String;

    iget-object p1, p1, Lm2/d$g;->b:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
