.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->P0()V
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

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d$a;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
