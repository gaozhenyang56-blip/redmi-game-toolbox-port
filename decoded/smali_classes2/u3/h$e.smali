.class Lu3/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/h;->M0(Lcom/miui/ai/service/OperationListCollectService$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu3/h;


# direct methods
.method constructor <init>(Lu3/h;)V
    .locals 0

    iput-object p1, p0, Lu3/h$e;->a:Lu3/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lx3/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/s;

    iget-object v2, p0, Lu3/h$e;->a:Lu3/h;

    invoke-virtual {v2, v1}, Lu3/h;->v(Lcom/miui/autotask/bean/s;)V

    goto :goto_0

    :cond_0
    return-void
.end method
