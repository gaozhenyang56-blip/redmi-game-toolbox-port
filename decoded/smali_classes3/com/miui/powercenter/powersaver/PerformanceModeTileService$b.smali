.class Lcom/miui/powercenter/powersaver/PerformanceModeTileService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->onClick()V
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

    iput-object p1, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$b;->a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$b;->a:Lcom/miui/powercenter/powersaver/PerformanceModeTileService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->b(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;Landroid/content/Context;)V

    return-void
.end method
