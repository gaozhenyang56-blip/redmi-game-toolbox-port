.class Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultEntry"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field resultCode:I

.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->intent:Landroid/content/Intent;

    iput p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->resultCode:I

    return-void
.end method
