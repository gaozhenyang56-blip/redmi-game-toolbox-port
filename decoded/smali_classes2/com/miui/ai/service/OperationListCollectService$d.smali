.class Lcom/miui/ai/service/OperationListCollectService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/ai/service/OperationListCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/ai/service/OperationListCollectService;


# direct methods
.method constructor <init>(Lcom/miui/ai/service/OperationListCollectService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/ai/service/OperationListCollectService$d;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->d:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 1

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu3/h;->X0(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V

    const/4 p1, 0x0

    return p1
.end method
