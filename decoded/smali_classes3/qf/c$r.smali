.class Lqf/c$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqf/c;->B(Lcom/miui/common/card/models/BaseCardModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lqf/c$r;->a:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lqf/c$r;->a:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lq5/e;

    if-eqz v1, :cond_0

    check-cast v0, Lq5/e;

    invoke-virtual {v0}, Lq5/e;->b()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    const-string v2, "module_show"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "firstaidkit_resultpage_function"

    invoke-static {v0, v1}, Lqf/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
