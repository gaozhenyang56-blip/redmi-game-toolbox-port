.class public final La4/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/f$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvf/b<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/autotask/bean/r;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/autotask/bean/r;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/r;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bean.uuid"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lu3/h;->c0(Ljava/util/List;)V

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lu3/c;->M(Ljava/util/List;)V

    sget-object p1, Lt3/a;->a:Lt3/a$a;

    invoke-virtual {p1}, Lt3/a$a;->a()Lt3/a;

    move-result-object p1

    const-string v0, "miShowType"

    invoke-virtual {p1, v0}, Lt3/a;->c(Ljava/lang/String;)V

    const-string p1, "MiShowDeviceUtils"

    const-string v0, "mi show app installed, auto task del success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "MiShowDeviceUtils"

    const-string v1, "load task list fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, La4/f$b$a;->a(Ljava/util/List;)V

    return-void
.end method
