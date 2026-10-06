.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrd/a;

.field final synthetic b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lrd/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->a:Lrd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lpf/g;->k()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lw4/e;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;-><init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
