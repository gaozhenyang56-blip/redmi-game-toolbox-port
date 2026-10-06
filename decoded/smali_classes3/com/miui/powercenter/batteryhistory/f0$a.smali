.class Lcom/miui/powercenter/batteryhistory/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/f0;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/f0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0$a;->a:Lcom/miui/powercenter/batteryhistory/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0$a;->a:Lcom/miui/powercenter/batteryhistory/f0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/f0;->d(Lcom/miui/powercenter/batteryhistory/f0;)Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0$a;->a:Lcom/miui/powercenter/batteryhistory/f0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/f0;->e(Lcom/miui/powercenter/batteryhistory/f0;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0$a;->a:Lcom/miui/powercenter/batteryhistory/f0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/f0;->f(Lcom/miui/powercenter/batteryhistory/f0;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/f0$a;->a:Lcom/miui/powercenter/batteryhistory/f0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/f0;->d(Lcom/miui/powercenter/batteryhistory/f0;)Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/miui/powercenter/legacypowerrank/e;->a(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;D)V

    return-void
.end method
