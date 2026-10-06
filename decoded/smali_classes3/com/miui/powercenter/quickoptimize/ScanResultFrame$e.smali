.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$e;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$e;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->e(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$e;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->f(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    return-void
.end method
