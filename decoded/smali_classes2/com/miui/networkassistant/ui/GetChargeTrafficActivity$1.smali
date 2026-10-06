.class Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$700(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
