.class Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->access$000(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
