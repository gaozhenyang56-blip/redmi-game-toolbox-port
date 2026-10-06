.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;

    iget-object p1, p1, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/VideoView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
