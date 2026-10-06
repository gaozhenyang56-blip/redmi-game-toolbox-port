.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$b;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/quickoptimize/ScanResultFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$b;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Lw4/e;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Lw4/e;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$b;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->c(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    :goto_0
    return-void
.end method
