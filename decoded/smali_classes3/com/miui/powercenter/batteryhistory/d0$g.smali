.class Lcom/miui/powercenter/batteryhistory/d0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;-><init>(Landroid/view/ViewGroup;Lcom/miui/powercenter/PowerMainActivity;Lcom/miui/powercenter/PowerSaveMainFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$g;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$g;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->g(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerSaveMainFragment;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$g;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/d0;->o0()V

    invoke-static {}, Lhd/a;->T()V

    :cond_0
    return-void
.end method
