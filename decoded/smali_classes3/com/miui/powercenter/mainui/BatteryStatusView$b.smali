.class Lcom/miui/powercenter/mainui/BatteryStatusView$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/mainui/BatteryStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/powercenter/mainui/BatteryStatusView;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/mainui/BatteryStatusView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->b:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->a(Lcom/miui/powercenter/mainui/BatteryStatusView;)Lcom/miui/powercenter/view/BatteryStatusValueText;

    move-result-object p2

    const v0, 0x7f12037d

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->b(Lcom/miui/powercenter/mainui/BatteryStatusView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Long;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->c(J)J

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->d(Z)Z

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->e(I)I

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->k(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->f(I)I

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->b:Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/mainui/BatteryStatusView;->g(Lcom/miui/powercenter/mainui/BatteryStatusView;J)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->a([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/BatteryStatusView$b;->b(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
