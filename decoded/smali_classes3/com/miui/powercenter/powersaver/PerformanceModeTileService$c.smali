.class Lcom/miui/powercenter/powersaver/PerformanceModeTileService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$c;->a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "PerformanceModeTileService"

    const-string v1, "openPerformanceMode in PerformanceModeTileService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$c;->a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lme/w;->A0(Landroid/content/Context;ZZ)V

    invoke-static {v2, v0}, Lhd/a;->W0(ZLjava/lang/String;)V

    return-void
.end method
