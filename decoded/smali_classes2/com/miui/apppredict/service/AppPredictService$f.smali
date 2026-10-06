.class Lcom/miui/apppredict/service/AppPredictService$f;
.super Lcom/miui/apppredict/IPredictNextApp$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/service/AppPredictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/service/AppPredictService;


# direct methods
.method private constructor <init>(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$f;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {p0}, Lcom/miui/apppredict/IPredictNextApp$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/service/AppPredictService$f;-><init>(Lcom/miui/apppredict/service/AppPredictService;)V

    return-void
.end method


# virtual methods
.method public R2(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/service/AppPredictService$f;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {v0}, Lcom/miui/apppredict/service/AppPredictService;->h(Lcom/miui/apppredict/service/AppPredictService;)V

    invoke-static {}, Lo3/c;->f()Lo3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo3/c;->g(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
