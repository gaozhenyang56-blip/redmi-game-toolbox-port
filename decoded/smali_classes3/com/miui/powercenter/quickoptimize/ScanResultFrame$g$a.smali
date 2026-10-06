.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;

    iput p2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Ll4/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;

    iget-object v1, v1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->a:Lrd/a;

    invoke-virtual {v0, v1}, Ll4/f;->c(Ll4/b;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;

    iget-object v1, v1, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->a:Lrd/a;

    invoke-virtual {v1, v0}, Lrd/a;->h(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g$a;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$g;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->i(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Ll4/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
