.class Lcom/market/sdk/utils/WhiteSetManager$1$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/market/sdk/utils/g;


# direct methods
.method constructor <init>(Lcom/market/sdk/utils/g;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "whiteSet"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
