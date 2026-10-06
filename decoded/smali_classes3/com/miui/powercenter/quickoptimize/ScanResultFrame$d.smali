.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/AutoPasteListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->q()V
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

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$d;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$d;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->d(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lw4/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/16 p1, 0x41f

    invoke-virtual {v0, p1, v1}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method
