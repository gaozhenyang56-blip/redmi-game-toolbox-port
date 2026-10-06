.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->G0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->s0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->u0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->w0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    const p3, 0x7f121626

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result v2

    invoke-static {p2, v2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->v0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->x0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    const p3, 0x7f120dd7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {v2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result v0

    const-string v1, "wireless_reverse_charging"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
